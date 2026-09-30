extends CharacterBody2D

var speed = 120

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)

		if collision.get_collider().name.begins_with("Zombie"):
			get_tree().call_deferred("reload_current_scene")
