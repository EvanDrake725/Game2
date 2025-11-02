extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	TdController.Gear_Collected.connect(gear_collected)
	TdController.Health_Change.connect(health_change)
	$Gears.text=str(TdController.Gears_Collected)
	$Health.text=str(TdController.Health)
	
	pass # Replace with function body.

func gear_collected():
	$Gears.text=str(TdController.Gears_Collected)

func health_change():
	$Health.text=str(TdController.Health)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
