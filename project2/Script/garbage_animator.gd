extends Node2D
var empty=true
@export var animated_sprite:AnimatedSprite2D

func _process(delta: float) -> void:
	if TdController.Group==false:
		animated_sprite.play("Pre")
	else:
		animated_sprite.play("Post")
	pass
