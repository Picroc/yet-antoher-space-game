extends Node3D

@onready var ship = $StaticBody3D

@export var VELOCITY = 0.1

func _physics_process(delta):
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
		
	if direction:
		var velocity = direction.normalized() * VELOCITY
		
		ship.position += velocity
