extends CharacterBody2D

var VELOCITY = Vector2.ZERO

@export var MAX_VELOCITY_X = 50

@export var ACCELERATION_X = 10
@export var ACCELERATION_Y = 2.5

@export var JUMP_VELOCITY = 75.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	move_and_slide()
	velocity.x = move_toward(velocity.x, Input.get_axis("move_left", "move_right") * MAX_VELOCITY_X, ACCELERATION_X)
	velocity.y = move_toward(velocity.y, gravity, ACCELERATION_Y)
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y -= JUMP_VELOCITY
