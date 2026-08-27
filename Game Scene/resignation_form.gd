extends MeshInstance3D

func interact_1() -> void:
	%UIContainer.visible = false
	%ResignationContainer.visible = true
	%player.controls_disabled = true
	get_tree().create_timer(4,true).connect("timeout", go_to_main_menu)
	
func interact_2() -> void:
	pass
	
func get_tooltip() -> String:
	return "Resignation form, already filled out: left click -> submit"

func go_to_main_menu():
	GlobalVars.current_mission = 0
	get_tree().change_scene_to_file("res://Main Menu/main_menu.tscn")
