extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Friend.position=$Player_TD.position
	if TdController.First_Load=="forward":
		$Player_TD.position.x=2712
		$Player_TD.position.y=323
	else:
		$Player_TD.position.x=277
		$Player_TD.position.y=302
	pass # Replace with function body.

func close():
	self.close()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
