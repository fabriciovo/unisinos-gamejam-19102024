extends CanvasLayer

@onready var _playButton: Button = $Control/Panel/ButtonsContainer/Play

var IsPlay:bool = true

func _on_play_pressed() -> void:
	if !IsPlay:
		get_tree().reload_current_scene()
		DrawNode.Reset_Draw()
	if IsPlay: 
		get_tree().paused = false
	IsPlay = !IsPlay


func _on_control_mouse_entered() -> void:
	DrawNode.Can_draw = true


func _on_control_mouse_exited() -> void:
	DrawNode.Can_draw = false
