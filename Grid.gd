extends GridContainer

func _ready() -> void:
	add_constant_override("hseparation",-287)
	
	var tween := create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)
	
	tween.tween_property(self, "rect_scale", 
	Vector2.ONE, 1).from(Vector2.ZERO)
	
	tween.tween_property(self, "custom_constants/hseparation",
	 21, 1)
	
