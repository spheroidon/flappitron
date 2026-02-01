extends CharacterBody3D

var gravity : float = -18
var jump_force : float = 8

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("jump"):
		velocity.y = jump_force
	
	move_and_slide()
