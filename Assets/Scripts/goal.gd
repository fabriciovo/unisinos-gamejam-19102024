extends Area2D

@export var hero_needed = 1
@export var next_scene : String
var hero_count:int = 0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("HERO"):
		hero_count+=1
		body.call_deferred("queue_free")
		if hero_count == hero_needed:
			call_deferred("_change_scene")

		
func _change_scene() -> void:
	Ui.ResetUI()
	get_tree().change_scene_to_file(next_scene)
