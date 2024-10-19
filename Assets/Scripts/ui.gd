extends CanvasLayer

signal start_game

var IsPlay:bool = true

func ResetUI():
	$Play.visible = true
	$Play.disabled = false

func _on_play_pressed() -> void:
	get_tree().paused = false
	DrawNode.Can_draw = true
	$Play.visible = false
	$Play.disabled = true
	emit_signal("start_game")



func _on_reset_pressed() -> void:
		get_tree().reload_current_scene()
		DrawNode.Reset_Draw()
