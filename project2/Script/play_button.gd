extends Area2D


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if(Input.is_action_pressed("Click")):
		get_tree().change_scene_to_file("res://P2_Room1.tscn")
	pass # Replace with function body.
