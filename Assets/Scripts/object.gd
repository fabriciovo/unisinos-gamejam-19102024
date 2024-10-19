extends Sprite2D

var dragging = false
const GRID_SIZE = 128.0

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed and is_mouse_over():
				dragging = true
			elif not event.pressed:
				dragging = false

# Chamado a cada frame
func _process(delta):
	if dragging:
		# Move o sprite com o mouse
		position = get_global_mouse_position() + offset
		
		# Alinha a posição ao grid
		position.x = int(position.x / GRID_SIZE) * GRID_SIZE
		position.y = int(position.y / GRID_SIZE) * GRID_SIZE

# Função que verifica se o mouse está sobre o sprite
func is_mouse_over() -> bool:
	var mouse_pos = get_global_mouse_position()
	return get_rect().has_point(to_local(mouse_pos))
