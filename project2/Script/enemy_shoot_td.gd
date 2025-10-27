extends CharacterBody2D

var Health=2
var state="idle"
var fire_rate=0.65
var time_since=0
var bullet=preload("res://Scenes/Bullet.tscn")
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
		time_since+=delta
		$Canon.look_at(player.position)
		fire()
	
	self.velocity*=0.9
	pass

	move_and_slide()

func fire():
	if time_since>=fire_rate:
		var new_bullet=bullet.instantiate()
		new_bullet.transform=$Canon.transform
		$Bullets.add_child(new_bullet)
		time_since=0
	
func hit():
	Health-=1
	if Health<=0:
		var new_Gear=gear_Scene.instantiate()
		get_node("/root").add_child(new_Gear)
		new_Gear.position=self.position
		self.queue_free()
