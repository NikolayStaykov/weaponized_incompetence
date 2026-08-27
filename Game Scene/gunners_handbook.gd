extends MeshInstance3D

func interact_1() -> void:
	Engine.time_scale = 0
	%UIContainer.visible = false
	%HandbookContainer.visible = true
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
func interact_2() -> void:
	pass
	
func get_tooltip() -> String:
	return "Gunner's handbook, everything you need to know: left click -> open"
