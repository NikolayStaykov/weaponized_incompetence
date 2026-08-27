extends MeshInstance3D

var current_value: int = 0
var lower_limit: int = -20
var upper_limit: int = 20

func interact_1() -> void:
	if(current_value > lower_limit):
		change_value(-1)
	
func interact_2() -> void:
	if(current_value < upper_limit):
		change_value(1)

func change_value(val: int) -> void:
	rotate_object_local(Vector3(0,1,0), 30 * val * -1)
	current_value+=val
	%horizontal_angle_label.text = "Horizontal Angle: " + str(current_value)
	%game.update_projected_impact_label(current_value, %vertical_control.current_value)

func get_tooltip() -> String:
	return "Horizontal Control Valve: left click -> turn left, right click -> turn right"
