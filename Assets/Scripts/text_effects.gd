extends CanvasLayer

@onready var text_label = $Control/Text
@export var text:String = ""

var stop = false

func _ready() -> void:
	text_label.text = text

func _process(_delta: float) -> void:
	if stop: return
	if Ui.IsPlay:
		_on_start_game()
		stop = false

func _on_start_game():
	$AnimationPlayer.play("hide")
