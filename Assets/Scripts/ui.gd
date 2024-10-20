extends CanvasLayer


var IsPlay:bool = true

func ResetUI():
	DrawNode.Can_draw = false
	$Play.visible = true
	$Play.disabled = false
	DrawNode.Reset_Draw()
	DrawNode.ResetInk()

func _on_play_pressed() -> void:
	get_tree().paused = false
	DrawNode.Can_draw = true
	$Play.visible = false
	$Play.disabled = true


func _on_reset_pressed() -> void:
	ResetUI()
	get_tree().reload_current_scene()
