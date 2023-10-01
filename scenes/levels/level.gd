extends Node2D
class_name Level

@onready var player_start = $PlayerStart


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func get_player_start() -> Vector2:
	return player_start.position
