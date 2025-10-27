extends Node2D
var start_position
@export var SPEED=400
@export var max_dis=500
@export var damage=1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_position=position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position+=transform.x*SPEED*delta
	if abs(position.distance_to(start_position))>max_dis:
		self.queue_free()
	pass
