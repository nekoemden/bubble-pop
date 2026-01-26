extends Node
class_name Main

const BUBBLE = preload("res://bubble/bubble.tscn")
@onready var timer: Timer = $Timer

func _ready() -> void:
	timer.timeout.connect(on_timed_out)

func spawn_bubble():
	var bubble: Bubble = BUBBLE.instantiate()
	bubble.position = Vector2(randi_range(0, get_viewport().size.x), get_viewport().size.y)
	add_child(bubble)

func on_timed_out():
	spawn_bubble()
