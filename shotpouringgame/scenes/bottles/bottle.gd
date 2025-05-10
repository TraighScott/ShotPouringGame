extends RigidBody2D

var mouseOver : bool
var mousePos := Vector2.ZERO
var difference : Vector2

func _on_move_area_mouse_entered() -> void:
	mouseOver = true
	print("In")


func _on_move_area_mouse_exited() -> void:
	mouseOver = false
	print("Out")


func _physics_process(_delta: float) -> void:
	difference = mousePos - get_global_mouse_position()
	
	if Input.is_action_pressed("Click") and mouseOver and difference != Vector2.ZERO:
		global_position -= difference
	
	mousePos = get_global_mouse_position()
