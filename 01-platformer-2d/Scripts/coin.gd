extends Area2D
signal coin_collected

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		coin_collected.emit()
		queue_free()
