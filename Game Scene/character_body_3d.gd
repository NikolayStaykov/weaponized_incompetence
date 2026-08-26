extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5
var camera : Camera3D
var look_direction: Vector2

func _ready() -> void:
	camera = %Camera3D
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = !get_tree().paused
		##toggle_pause_ui()
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		else: 
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
			
	if get_tree().paused:
		return
	
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	var input_dir := Input.get_vector("left", "right", "up", "down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
	
	if Input.is_action_just_pressed("interact_1") and %interact_ray.is_colliding():
		%interact_ray.get_collider().get_parent().interact_1()
	
	if Input.is_action_just_pressed("interact_2") and %interact_ray.is_colliding():
		%interact_ray.get_collider().get_parent().interact_2()
	
	_rotate_camera(delta)
	move_and_slide()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		look_direction = event.relative * 0.1
		
func _rotate_camera(delta: float, sensitivity_modifier: float = 1.0):
	rotation.y -= look_direction.x * delta
	camera.rotation.x = clamp(camera.rotation.x - look_direction.y * delta, -1.5, 1.5)
	look_direction = Vector2.ZERO
