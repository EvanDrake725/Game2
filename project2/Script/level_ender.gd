extends Area2D
@export var Level_To:String
@export var Locks_Complete=1
var Direction="platform"

func _on_body_entered(body: Node2D) -> void:
	if body.name=="Player_PF":
		get_tree().change_scene_to_file(Level_To)
		TdController.First_Load=Direction
		TdController.Locks_Done=Locks_Complete
	pass # Replace with function body.
