extends Node2D


func _ready() -> void:
	DrawNode.Reset_Draw()
	Ui.show()
	get_tree().paused = true
