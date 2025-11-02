extends Area2D
@export var Room_To_Change:String
@export var Direction:String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name=="Player_TD":
		get_tree().change_scene_to_file(Room_To_Change)
		TdController.First_Load=Direction
	pass # Replace with function body.
