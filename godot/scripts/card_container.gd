extends HBoxContainer

var startPosition

func _ready() -> void:
	startPosition = self.position

func _on_mouse_entered() -> void:
	var target_position = startPosition + Vector2(0, -20)
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", target_position, 0.2)

func _on_mouse_exited() -> void:
	if !Game.cardSelected:
		var tween = get_tree().create_tween()
		tween.tween_property(self, "position", startPosition, 0.2)
		
