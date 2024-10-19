extends Control

var _array_pos: Array = []
var _shapes: Array = []
var _start_draw = false
var Can_draw: bool = false

func _input(_event: InputEvent) -> void:
	if not Can_draw: return
	if not Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and _start_draw:
		Can_draw = false
		_start_draw = false
		return
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		_start_draw = true
		_array_pos.append(_event.position)
		queue_redraw()
		_create_static_body(_event.position)



func _draw() -> void:
	for _point in _array_pos:
		draw_circle(_point,20,Color.RED)
	

func _create_static_body(position: Vector2) -> void:
	var body = StaticBody2D.new()
	body.position = position
	
	var collision_shape = CollisionShape2D.new()
	var circle_shape = CircleShape2D.new()
	circle_shape.radius = 10
	collision_shape.shape = circle_shape
	
	body.add_child(collision_shape)  
	add_child(body)
	_shapes.append(collision_shape)


func Reset_Draw():
	_array_pos.clear()
	for _shape in _shapes:
		_shape.queue_free()
	_shapes.clear()
	queue_redraw()
