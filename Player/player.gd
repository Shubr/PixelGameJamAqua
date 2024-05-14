extends CharacterBody2D

@export var MAX_VELOCITY_X = 200
@export var ACCELERATION_X = 25

@export var MAX_VELOCITY_Y = 300
@export var ACCELERATION_Y = 30

@export var JUMP_VELOCITY = 400.0
@export var GRAVITY = 9

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	velocity.x = move_toward(velocity.x, Input.get_axis("move_left", "move_right") * MAX_VELOCITY_X, ACCELERATION_X)
	velocity.y = move_toward(velocity.y, MAX_VELOCITY_Y, ACCELERATION_Y)
	move_and_slide()
