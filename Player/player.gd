extends CharacterBody2D

@export var speed = 400
@export var rotation_speed = 1.5

func _physics_process(delta):
	# get_input()
	
	if (Input.is_key_pressed(KEY_LEFT)):
		velocity.x = speed
	
	move_and_slide()
