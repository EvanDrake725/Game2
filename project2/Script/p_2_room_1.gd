extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if TdController.First_Load=="forward":
		$Player_TD.position.x=343
		$Player_TD.position.y=156
	elif TdController.First_Load=="platform":
		$Player_TD.position.x=-170
		$Player_TD.position.y=-103
		$Terminal.Finished=true
	elif TdController.First_Load=="back":
		$Player_TD.position.x=680
		$Player_TD.position.y=533
	elif TdController.First_Load=="Room4":
		$Player_TD.position.x=939
		$Player_TD.position.y=-118
	else: 
		$Player_TD.position.x=-88
		$Player_TD.position.y=-249
	$Friend.position=$Player_TD.position
		
	if TdController.Locks_Done>=1:
		$Door2.queue_free()
	if TdController.Locks_Done>=2:
		$Door.queue_free()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
