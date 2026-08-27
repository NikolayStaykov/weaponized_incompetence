extends RayCast3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_colliding():
		%item_info_label.text = get_collider().get_parent().get_tooltip();
	else: 
		%item_info_label.text = ""
