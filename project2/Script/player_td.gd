extends CharacterBody2D
var speed=300
var RunSpeed=350
var facing=1
var Group="alone"

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
		print("Hit")
	if (Input.is_action_pressed("Jump")):
		Group="partner"
	move_and_slide()
	pass
	


func _on_bottom_hit_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		body.hit()
	pass # Replace with function body.


func _on_top_hit_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		body.hit()
	pass # Replace with function body.


func _on_left_hit_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		body.hit()
	pass # Replace with function body.


func _on_right_hit_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		body.hit()
	pass # Replace with function body.
