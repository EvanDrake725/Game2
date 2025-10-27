extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	TdController.Gear_Collected.connect(gear_collected)
	$Gears.text=str(TdController.Gears_Collected)
	pass # Replace with function body.

func gear_collected():
	$Gears.text=str(TdController.Gears_Collected)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
