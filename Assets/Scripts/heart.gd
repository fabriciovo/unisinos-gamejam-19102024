extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("HERO"):
		DrawNode.Set_Ink_Value(50)
		queue_free()
