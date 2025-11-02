extends PathFollow2D
@export var speed=0.12
func _process(delta):
	progress_ratio+=delta*speed
