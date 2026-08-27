extends MeshInstance3D

var cover_open: bool = false
var cover_position_closed: MeshInstance3D
var cover_position_open: MeshInstance3D

func _ready() -> void:
	cover_position_closed = get_child(0)
	cover_position_open = get_child(1)

func interact_1() -> void:
	if cover_open:
		%game.fire_command()
	
func interact_2() -> void:
	if cover_open: 
		close_cover()
	else: 
		open_cover()
	cover_open = !cover_open

func close_cover():
	cover_position_open.visible = false
	cover_position_closed.visible = true

func open_cover():
	cover_position_open.visible = true
	cover_position_closed.visible = false
	
func get_tooltip() -> String:
	return "Fire Control: left click -> press button, right click -> flip cover"
