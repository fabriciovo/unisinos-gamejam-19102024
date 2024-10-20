extends Area2D

@export var hero_needed = 1
@export var next_scene : PackedScene
var hero_count:int = 0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("HERO"):
		hero_count+=1
		body.visible = false
		if hero_count == hero_needed:
			Ui.ResetUI()
			get_tree().change_scene_to_packed(next_scene)
		
