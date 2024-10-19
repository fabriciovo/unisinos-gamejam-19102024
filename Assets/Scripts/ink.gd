extends TextureProgressBar

func set_ink_value(_value):
	value = min(100, _value)
