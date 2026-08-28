extends MeshInstance3D


func interact_1() -> void:
	pass
	
func interact_2() -> void:
	pass

func get_tooltip() -> String:
	return GlobalVars.missions[GlobalVars.current_mission].comment
