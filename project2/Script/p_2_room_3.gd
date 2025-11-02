extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if TdController.First_Load=="forward":
		$Player_TD.position.x=-56
		$Player_TD.position.y=2110
		
	elif TdController.First_Load=="platform":
		$Player_TD.position.x=78
		$Player_TD.position.y=114
		$Terminal.Finished=true
	else:
		$Player_TD.position.x=-104
		$Player_TD.position.y=63
	if TdController.Locks_Done>=1:
		$Door.queue_free()
	pass # Replace with function body.

func close():
	self.close()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
