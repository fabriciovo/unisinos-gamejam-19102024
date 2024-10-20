extends Control

var _array_pos: Array = []
var _shapes: Array = []
var Can_draw: bool = false
var ink_count = 100
var color_rgb = Color(252 / 255.0, 92 / 255.0, 101 / 255.0)


func _input(_event: InputEvent) -> void:
	if not Can_draw or ink_count <= 0: return
	if not Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		return
	ink_count -= 1.0
	$Ink.set_ink_value(ink_count)
	_array_pos.append(_event.position)
	queue_redraw()
	_create_static_body(_event.position)
	

func Set_Ink_Value(_value):
	ink_count += _value
	$Ink.set_ink_value(ink_count)

func ResetInk():
	ink_count = 100
	$Ink.set_ink_value(ink_count)

func _draw() -> void:
	for _point in _array_pos:
		draw_circle(_point,20,color_rgb)
	

func _create_static_body(_position: Vector2) -> void:
	var body = StaticBody2D.new()
	body.position = _position
	
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
		_shape.call_deferred("queue_free")
	_shapes.clear()
	queue_redraw()
