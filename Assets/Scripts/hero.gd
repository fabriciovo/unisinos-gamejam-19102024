extends CharacterBody2D
@onready var raycast = $RayCast2D
@onready var sprite = $Sprite2D

const SPEED = 100.0
const JUMP_VELOCITY = -400.0
var direction: = 1


func _process(delta: float) -> void:
	if direction == 1:
		sprite.flip_h = false
	else:
		sprite.flip_h = true

func _physics_process(_delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * _delta
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
	velocity.x = direction * SPEED
	move_and_slide()
	if raycast.is_colliding():
		var collided_object = raycast.get_collider()
		
		if collided_object:
			direction *= -1
			raycast.rotation *= -1
