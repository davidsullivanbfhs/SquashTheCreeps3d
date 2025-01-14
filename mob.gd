extends CharacterBody3D

@export var min_speed = 10
@export var max_speed = 18

func _ready() -> void:
	pass

func initialize(start_position, player_postion):
	look_at_from_position(start_position, player_postion, Vector3.UP)
	rotate_y(randf_range(-PI/4, PI/4)) #quarter pi = 45 degrees
	
	var random_speed = randi_range(min_speed, max_speed)
	velocity = Vector3.FORWARD * random_speed
	velocity = velocity.rotated(Vector3.UP, rotation.y)


func _physics_process(delta: float) -> void:
	move_and_slide()
	


func _on_visible_on_screen_notifier_3d_screen_exited() -> void:
	queue_free()
