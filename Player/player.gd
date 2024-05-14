extends CharacterBody2D

var VELOCITY = Vector2(0, 0)

@export var MAX_VELOCITY_X = 5
@export var ACCELERATION_X = 0.5

@export var MAX_VELOCITY_Y = 9.8
@export var ACCELERATION_Y = 0.1

@export var JUMP_VELOCITY = 400.0
@export var GRAVITY = 9

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	
	var collision = move_and_collide(VELOCITY * delta)
	
	VELOCITY.x = move_toward(VELOCITY.x, Input.get_axis("move_left", "move_right") * MAX_VELOCITY_X, ACCELERATION_X)
	VELOCITY.y = move_toward(VELOCITY.y, MAX_VELOCITY_Y, ACCELERATION_Y)
	
	if collision:
		print("PLAYER, colldied with ", collision.get_collider().name)
