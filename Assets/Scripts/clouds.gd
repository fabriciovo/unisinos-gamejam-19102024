extends Node2D

var velocity: float = 0.0

func _ready() -> void:
	randomize()
	velocity = randf_range(0.03, 0.1)

func _process(_delta: float) -> void:
	position.x -= velocity
