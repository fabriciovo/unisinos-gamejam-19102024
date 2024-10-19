extends Control

func _ready() -> void:
	DrawNode.Can_draw = false
	Ui.hide()


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/World_Parent.tscn")
