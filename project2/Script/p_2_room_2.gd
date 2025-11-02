extends Node2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if TdController.First_Load=="forward":
		$Player_TD.position.x=-56
		$Player_TD.position.y=346
	else:
		$Player_TD.position.x=1900
		$Player_TD.position.y=585
	$Friend.position=$Player_TD.position
	pass # Replace with function body.

func close():
	self.close()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
