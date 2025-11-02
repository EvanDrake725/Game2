class_name Player
extends CharacterBody2D
var speed=300
var RunSpeed=350
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var dir=Input.get_vector("Left","Right","Up","Down")
	if (Input.is_action_pressed("Run")):
		self.velocity=dir*RunSpeed
	else:
		self.velocity=dir*speed
	if (Input.is_action_just_pressed("Hit")):
		print("hit")
		
	if (Input.is_action_just_pressed("Heal")):
		if TdController.Gears_Collected>=1:
			TdController.Health_Gain()
			TdController.Loose_Gear()
	$Sword_Center/Sword.look_at(get_global_mouse_position())
	move_and_slide()
	
	pass
	
func unused(event):
		TdController.Player_Pos=global_position

func get_type():
	return "Player"


func _on_sword_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		body.hit()
	pass # Replace with function body.
