extends CharacterBody3D

#speed
@export var speed = 14
#gravity
@export var fall_acceleration = 75
#speed * direction every frame
var target_velocity = Vector3.ZERO

func _physics_process(delta: float) -> void:
	#direction local svar since it changes every tick
	var direction = Vector3.ZERO
	
	#check our inputs and set direction
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_forward"):
		direction.z += 1
	if Input.is_action_pressed("move_back"):
		direction.z -= 1
	
