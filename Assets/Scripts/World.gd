extends Node2D


func _ready() -> void:
	Ui.show()
	get_tree().paused = Ui.IsPlay
