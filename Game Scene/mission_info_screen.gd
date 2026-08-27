extends MeshInstance3D


func interact_1() -> void:
	pass
	
func interact_2() -> void:
	pass

func get_tooltip() -> String:
	if GlobalVars.current_mission == 6:
		return "They want me to nuke the palace?"
	else: 
		return ""
