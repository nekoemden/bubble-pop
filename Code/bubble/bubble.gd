extends Area2D
class_name Bubble

var speed: float = -112 # px/ sec.

func _reandy() -> void:
	input_event.connect(on_clicked)

func _process(delta: float) -> void:
	position.y += speed * delta 

func on_clicked(_viewport, event, _shape):
	print("hi")
	if event is InputEventMouseButton:
		print("A button was clicked")
	if event.button_index == MOUSE_BUTTON_LEFT:
		print("It's the Left Button!")
	if event.pressed:
		print("Mouse down.")
	else:
		print("Mouse up.")
