extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -400.0
var direction: = 1

func _physics_process(_delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * _delta
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
	if is_on_wall():
		direction *= -1
	velocity.x = direction * SPEED
	move_and_slide()
