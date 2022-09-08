extends GridContainer


func _ready() -> void:
	add_constant_override("hseparation", -1080)
	var tween := create_tween().set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "custom_constants/hseparation", 21, 1)
