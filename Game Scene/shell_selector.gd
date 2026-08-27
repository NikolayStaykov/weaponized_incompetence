extends MeshInstance3D

var current_value: int = 0
var lower_limit: int = -1
var upper_limit: int = 1

func interact_1() -> void:
	if(current_value > lower_limit):
		change_value(-1)
	
func interact_2() -> void:
	if(current_value < upper_limit):
		change_value(1)

func change_value(val: int) -> void:
	rotate_object_local(Vector3(0,1,0), 45 * val * -1)
	current_value+=val
	%vertical_angle_label.text = "Vertical Angle: " + str(current_value)
	%game.update_projected_impact_label(%horizontal_control.current_value, current_value)


func get_tooltip() -> String:
	return "Shell selector: left click -> turn up, right click -> turn down"
