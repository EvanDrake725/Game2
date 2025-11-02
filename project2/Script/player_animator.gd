extends Node2D
@export var Animated_Sprite:AnimatedSprite2D

func _process(delta: float) -> void:
	if (Input.is_action_pressed("Left")):
		Animated_Sprite.play("Left")
	elif (Input.is_action_pressed("Right")):
		Animated_Sprite.play("Right")
	elif (Input.is_action_pressed("Up")):
		Animated_Sprite.play("Up")
	elif (Input.is_action_pressed("Down")):
		Animated_Sprite.play("Forward")
	else:
		Animated_Sprite.stop()
	pass
