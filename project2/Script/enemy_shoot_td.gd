extends CharacterBody2D

var Health=5
var state="idle"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var player_dir=get_tree().get_nodes_in_group("Player")[0].position-self.position
	
	if player_dir.length()<250:
		state="chase"
	else:
		state="idle"
	
	if (state=="chase"):
		print("shooting")
	
	self.velocity*=0.9
	pass

	move_and_slide()

func hit():
	Health-=1
	if Health<=0:
		self.queue_free()
