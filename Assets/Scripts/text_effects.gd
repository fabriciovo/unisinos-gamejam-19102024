extends CanvasLayer

var stop = false

func _process(delta: float) -> void:
	if stop: return
	if Ui.IsPlay:
		_on_start_game()
		stop = false

func _on_start_game():
	$AnimationPlayer.play("hide")
