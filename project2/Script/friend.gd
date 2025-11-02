extends CharacterBody2D

var SPEED = 300.0
var following=false
var player_td=preload("res://Scenes/player_td.tscn")

func _physics_process(delta: float) -> void:
	var player_dir=get_tree().get_nodes_in_group("Player")[0].position-self.position
	$AnimatedSprite2D.play("default")
	if player_dir.length()>75:
		following="follow"
	if player_dir.length()<75:
		following="idle"
		
	if (TdController.Group==true):
		following="follow"
		self.show()
	else:
		self.hide()
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
