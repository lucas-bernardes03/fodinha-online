extends HBoxContainer

var startPosition
var maxCardsAllowed = 12

func _ready() -> void:
	self.size.x = maxCardsAllowed*105
	self.pivot_offset.x = maxCardsAllowed*52.5
	var width = ProjectSettings.get_setting("display/window/size/viewport_width")
	var height = ProjectSettings.get_setting("display/window/size/viewport_height")
	self.global_position.x = width/4
	self.global_position.y = height - 60
	startPosition = self.position

func _on_mouse_entered() -> void:
	var target_position = startPosition + Vector2(0, -100)
	var tween = get_tree().create_tween()
	var tween2 = get_tree().create_tween()
	tween.tween_property(self, "position", target_position, 0.2)
	tween2.tween_property(self, "size", Vector2(1.3,1.3), 0.2)


func _on_mouse_exited() -> void:
	if !Game.cardSelected:
		var tween = get_tree().create_tween()
		var tween2 = get_tree().create_tween()
		tween.tween_property(self, "position", startPosition, 0.2)
		tween2.tween_property(self, "size", Vector2(1,1), 0.2)
