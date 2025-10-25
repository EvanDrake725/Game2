extends CharacterBody2D

var SPEED = 300.0
var state="idle"


func _physics_process(delta: float) -> void:
	var Player_State=get_node("/root/Node2D/Player_TD")
	var player_dir=get_tree().get_nodes_in_group("Player")[0].position-self.position
	
	if player_dir.length()>75:
		state="follow"
	if player_dir.length()<75:
		state="idle"
		
	if (Player_State.Group=="partner"):
		state="follow"
	else:
		state="idle"
		
	if (state=="follow"):
		self.SPEED=300
		self.velocity=player_dir.normalized()*SPEED
	if (state=="idle"):
		self.SPEED=0
		self.velocity=player_dir.normalized()*SPEED
		
	self.velocity*=0.9
	pass

	move_and_slide()
