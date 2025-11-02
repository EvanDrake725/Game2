extends Node
var Gears_Collected=0
signal Gear_Collected
var Group=false
var Locks_Done=0

var First_Load="forward"

func Collect_Gears():
	Gears_Collected+=1
	Gear_Collected.emit()
	
func Loose_Gear():
	Gears_Collected-=1
	Gear_Collected.emit()
	
func Follower():
	Group=true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
