extends GridContainer

func _ready() -> void:
	add_constant_override("hseparation",-287)
	
	yield(get_tree().create_timer(0.2), "timeout")

	var tween := create_tween().set_trans(Tween.TRANS_QUINT).set_ease(Tween.EASE_OUT)
	tween.set_parallel().tween_property(self, "rect_scale", 
	Vector2.ONE, 0.5).from(Vector2.ZERO)

	tween.tween_property(self, "rect_position", 
	rect_position, 0.5).from(Vector2(0, rect_position.y + rect_size.y * 0.5))
	
	tween.tween_property(self, "custom_constants/hseparation",
	 21, 2).set_trans(Tween.TRANS_QUINT)
	tween.set_parallel(false)
	tween.tween_callback(self, "suck")
	
func suck() -> void:
	print("hi")
	
