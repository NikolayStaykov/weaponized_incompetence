extends Node3D

var current_mission: int = 2
var mission_info: MissionInfo
var horizontal_anchor_coordinate: int = 27
var vertical_anchor_coordinate: int = 3

func _ready() -> void:
	mission_info = GlobalVars.missions[current_mission]
	%mission_info_label.text = mission_info.mission_brief
	%wind_info_label.text = mission_info.wind_info
	update_projected_impact_label(0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_projected_impact_label(horizontal_value: int, vertical_value: int) -> void:
	%projected_impact_location_label.text = "Projected Impact 
Coordinates: " + str(calculate_horizontal_impact_coordinate(horizontal_value)) + "N " + str(calculate_vertical_impact_coordinate(vertical_value)) + "W"

func calculate_horizontal_impact_coordinate(val: int) -> int:
	print(str(val))
	print(mission_info.wind_adjust_horizontal)
	print(mission_info.wind_adjust_vertical)
	return horizontal_anchor_coordinate + mission_info.wind_adjust_horizontal + val
	
func calculate_vertical_impact_coordinate(val: int) -> int:
	return vertical_anchor_coordinate + mission_info.wind_adjust_vertical + val
