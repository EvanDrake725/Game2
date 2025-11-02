extends CanvasLayer
signal on_trans_fin
@onready var color_rect=$ColorRect
@onready var animate_player=$AnimationPlayer

func _ready() -> void:
	color_rect.visible=false
	animate_player.animation_finished.connect(_Anim_finished)
	
func _Anim_finished(anim_name):
	if anim_name=="FadeToBlack":
		on_trans_fin.emit()
		animate_player.play("Fade_To_Normal")
	elif anim_name=="Fade_To_Normal":
		color_rect.visible=false
	
func transition():
	color_rect.visible=true
	animate_player.play("FadeToBlack")
