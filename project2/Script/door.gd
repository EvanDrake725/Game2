extends StaticBody2D
var Door_State="Closed"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var Player_Group=get_node("/root/Node2D/Player_TD")
	var Terminal_State=get_node("/root/Node2D/Terminal")
	if Input.is_action_just_pressed("Interact"):
		if Terminal_State.Used=="Using":
			if Player_Group.Group=="partner":
					self.queue_free()
			else:
				print("Cannot open")
	pass
