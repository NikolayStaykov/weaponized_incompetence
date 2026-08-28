extends Node3D

var mission_info: MissionInfo
var horizontal_anchor_coordinate: int = 27
var vertical_anchor_coordinate: int = 3
var timer: Timer

func _ready() -> void:
	mission_info = GlobalVars.missions[GlobalVars.current_mission]
	%mission_info_label.text = mission_info.mission_brief
	%wind_info_label.text = mission_info.wind_info
	update_projected_impact_label(0,0)
	timer = Timer.new()
	add_child(timer)
	timer.start(mission_info.time_limit)
	timer.connect("timeout",mission_fail_state)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	update_time_remaining_label()

func update_projected_impact_label(horizontal_value: int, vertical_value: int) -> void:
	%projected_impact_location_label.text = "Projected Impact 
Coordinates: " + str(calculate_horizontal_impact_coordinate(horizontal_value)) + "N " + str(calculate_vertical_impact_coordinate(vertical_value)) + "W"

func calculate_horizontal_impact_coordinate(val: int) -> int:
	return horizontal_anchor_coordinate + mission_info.wind_adjust_horizontal + val
	
func calculate_vertical_impact_coordinate(val: int) -> int:
	return vertical_anchor_coordinate + mission_info.wind_adjust_vertical + val


func _on_target_list_button_pressed() -> void:
	%HandbookContainer.visible = false
	%HandbookContainer2.visible = true


func _on_amunition_list_back_button_pressed() -> void:
	%HandbookContainer.visible = false
	%HandbookContainer2.visible = false
	%UIContainer.visible = true
	Engine.time_scale = 1
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _on_ammunition_list_button_pressed() -> void:
	%HandbookContainer.visible = true
	%HandbookContainer2.visible = false


func _on_targets_of_interest_back_button_pressed() -> void:
	_on_amunition_list_back_button_pressed()

func fire_command():
	%player.controls_disabled = true
	timer.stop()
	print(calculate_horizontal_impact_coordinate(0))
	print(calculate_vertical_impact_coordinate(0))
	print(%shell_selector.current_value)
	if mission_info.target_coordinates_horizontal == calculate_horizontal_impact_coordinate(%horizontal_control.current_value) and mission_info.target_coordinates_vertical == calculate_vertical_impact_coordinate(%vertical_control.current_value) and mission_info.required_ammo_type == %shell_selector.current_value:
		%MissionEndText.text = mission_info.mission_end_message
		%UIContainer.visible = false
		%MissionEndContainer.visible = true
		GlobalVars.current_mission += 1
		if(GlobalVars.current_mission == 7):
			get_tree().create_timer(4,true).connect("timeout", back_to_main_menu)
		else: 
			get_tree().create_timer(4,true).connect("timeout", start_next_mission)
	else: 
		mission_fail_state()
		
func start_next_mission():
	get_tree().reload_current_scene()

func back_to_main_menu():
	get_tree().change_scene_to_file("res://Main Menu/main_menu.tscn")
	
func mission_fail_state() -> void:
	%player.controls_disabled = true
	%UIContainer.visible = false
	%MissionFailedContainer.visible = true
	GlobalVars.current_mission = 0
	get_tree().create_timer(4,true).connect("timeout", back_to_main_menu)
	
func update_time_remaining_label() -> void:
	var time: String = "0" + str(format_minutes(timer.time_left)) + ":" + format_seconds(timer.time_left)
	%time_remaining_label.text = "Time remaining: " + time
func format_seconds(seconds: int) -> String:
	if seconds < 10:
		return "0" + str(seconds)
	else: 
		return str(seconds % 60)

func format_minutes(seconds: int):
	return str(seconds/60)
