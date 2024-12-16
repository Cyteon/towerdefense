extends SpringArm3D

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_pressed():
			if event.button_index == MOUSE_BUTTON_WHEEL_UP:
				spring_length -= 1
			elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
				spring_length += 1
			
			spring_length = clamp(spring_length, 1, 10)
	
	if event is InputEventMouseMotion:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
			get_parent().rotate_y(deg_to_rad(-event.relative.x * .2))
			
			rotate_x(deg_to_rad(-event.relative.y * .2))
			rotation.x = clamp(rotation.x, deg_to_rad(-90), deg_to_rad(-20))


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
