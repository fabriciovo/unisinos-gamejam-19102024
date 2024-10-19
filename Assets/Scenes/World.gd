extends Node2D


func _ready() -> void:
	DrawNode.Can_draw = true
	Ui.show()
	get_tree().paused = Ui.IsPlay
