@tool
extends AnimatableBody2D

@export_category("Game")
@export var texture : CompressedTexture2D : set = set_texture

func _ready():
	set_texture(texture)

func set_texture(new_value):
	texture = new_value
	$Sprite2D.texture = texture

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
