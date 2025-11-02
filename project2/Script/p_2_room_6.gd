extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if TdController.First_Load=="forward":
		$Player_TD.position.x=2070
		$Player_TD.position.y=2055
	elif TdController.First_Load=="platform":
		$Player_TD.position.x=1377
		$Player_TD.position.y=239
	else:
		$Player_TD.position.x=1452
		$Player_TD.position.y=115
	if TdController.Locks_Done>=3:
		$Door.queue_free()
	pass # Replace with function body.

func close():
	self.close()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
