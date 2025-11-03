extends CharacterBody2D

var Health=2
const SPEED = 310
var state="idle"
var gear_Scene=preload("res://Scenes/gear.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var player = get_tree().get_nodes_in_group("Player")[0]
	var player_dir=get_tree().get_nodes_in_group("Player")[0].position-self.position
	
	if player_dir.length()<250:
		state="chase"
	else:
		state="idle"
	
	if (state=="chase"):
		self.velocity=player_dir.normalized()*SPEED
		$AnimatedSprite2D.play("Run")
		$AttackBox.look_at(player.position)
	
	self.velocity*=0.9
	pass

	move_and_slide()

func hit():
	Health-=1
	$SFX/Dead.play()
	if Health<=0:
		self.queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name=="Player_TD":
		TdController.Health_Loss()
		TdController.Health_Loss()
	pass # Replace with function body.
