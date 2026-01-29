extends Node
class_name Main

const BUBBLE = preload("res://bubble/bubble.tscn")
@onready var timer: Timer = $Timer
@onready var sfx: AudioStreamPlayer2D = $Sfx
@onready var score_ui: Label = $Scoreboard/ScoreUI

var score: int = 0 #Place to load save file.

func _ready() -> void:
	timer.timeout.connect(on_timed_out)
	#update_scoreboard()

func spawn_bubble():
		var bubble: Bubble = BUBBLE.instantiate()
		bubble.position = Vector2(randi_range(0, get_viewport().size.x), get_viewport().size.y +100)
		bubble.main = self
		bubble.point_value = 5
		add_child(bubble)

func on_timed_out():
	spawn_bubble()

func update_scoreboard(delta_score):
	score += delta_score
	score_ui.text = str(score)
