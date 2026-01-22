extends Node2D
class_name Bubble

# Vars = Nouns
var is_tall: bool = false 
var my_age: int = 52 #Years.
var my_weight: float = 5.673 #kg
var my_name: String = "Kyle Rhone"

var speed: float = -112 # px/ sec.


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	position.y += speed * delta 
