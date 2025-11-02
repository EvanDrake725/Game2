extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name=="Player_PF":
		body.Alive=false
	pass # Replace with function body.
