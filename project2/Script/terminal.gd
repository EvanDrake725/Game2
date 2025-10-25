extends Area2D
var Used="Not"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass


func _on_body_entered(body: Node2D) -> void:
	Used="Using"
	pass # Replace with function body.


func _on_body_exited(body: Node2D) -> void:
	Used="Not"
	pass # Replace with function body.
