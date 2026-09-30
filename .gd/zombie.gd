extends CharacterBody2D

@export var speed = 100.0

func _physics_process(delta):
	var player = get_parent().get_node("Player")
	var direction = global_position.direction_to(player.global_position)

	velocity = direction * speed
	move_and_slide()
