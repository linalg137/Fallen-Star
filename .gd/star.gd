extends Area2D

func _on_body_entered(body):
	queue_free()


func _on_star_body_entered(body):
	get_parent().collect_star()
	queue_free()
