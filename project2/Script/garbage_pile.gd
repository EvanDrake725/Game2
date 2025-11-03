extends Area2D
var used=false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if used==true and Input.is_action_just_pressed("Interact"):
		TdController.Follower()
		TdController.Garbage_Used=true
		$Friend_Got_Screen.show()
		$Friend_Noise.play()
	pass


func _on_body_entered(body: Node2D) -> void:
	used=true
	pass # Replace with function body.


func _on_body_exited(body: Node2D) -> void:
	used=false
	$Friend_Got_Screen.hide()
	
	pass # Replace with function body.
