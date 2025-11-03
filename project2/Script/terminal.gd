extends Area2D
var Used=false
var Finished=false
@export var PlatformLevel:String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Used==true:
		if Input.is_action_just_pressed("Interact") and TdController.Group==true and Finished==false:
			$Using.play()
			get_tree().change_scene_to_file(PlatformLevel)
	pass


func _on_body_entered(body: Node2D) -> void:
	Used=true
	pass # Replace with function body.


func _on_body_exited(body: Node2D) -> void:
	Used=false
	pass # Replace with function body.
