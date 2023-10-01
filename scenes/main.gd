extends Node

@export_category("Game")
@export var current_level : int = 1

const player_type = preload("res://scenes/player.gd")
@onready var player : player_type = $Player


func _unhandled_input(event):
	if event is InputEventKey and event.keycode == KEY_ESCAPE:
		get_tree().quit()

# Called when the node enters the scene tree for the first time.
func _ready():
	_change_level(current_level)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func _change_level(new_level):
	# unload old level
	
	# setup new level
	current_level = new_level
	var current_level_node = load("res://scenes/levels/level_%d.tscn" % current_level).instantiate() as Level
	add_child(current_level_node)
	player.position = current_level_node.get_player_start()
	
