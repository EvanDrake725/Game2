extends CharacterBody2D

var SPEED = 300.0
var following=false


func _physics_process(delta: float) -> void:
	var player_dir=get_tree().get_nodes_in_group("Player")[0].position-self.position
	
	if player_dir.length()>75:
		following="follow"
	if player_dir.length()<75:
		following="idle"
		
	if (TdController.Group==true):
		following="follow"
	else:
		following="idle"
		
	if (following=="follow"):
		self.SPEED=300
		self.velocity=player_dir.normalized()*SPEED
	if (following=="idle"):
		self.SPEED=0
		self.velocity=player_dir.normalized()*SPEED
		
	self.velocity*=0.9
	pass

	move_and_slide()
