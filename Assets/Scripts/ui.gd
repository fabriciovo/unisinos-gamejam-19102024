extends CanvasLayer

var _square = preload("res://Assets/Scenes/object.tscn")


var IsPlay:bool = true

func _on_play_pressed() -> void:
	get_tree().paused = false


func _on_control_mouse_entered() -> void:
	pass
	#DrawNode.Can_draw = false

func _on_reset_pressed() -> void:
		get_tree().reload_current_scene()
		DrawNode.Reset_Draw()


func _on_draw_pressed() -> void:
	DrawNode.Can_draw = true
	print(DrawNode.Can_draw)


func _on_square_pressed() -> void:
	var _square_inst = _square.instantiate()
	add_child(_square_inst)
