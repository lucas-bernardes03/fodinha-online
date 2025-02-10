extends Control

@onready var card = preload("res://cardOnBoard.tscn")

func _on_mouse_entered() -> void:
	Game.mouseOnPlacement = true


func _on_mouse_exited() -> void:
	Game.mouseOnPlacement = false

func placeCard():
	var cardTemp = card.instantiate()
	var width = ProjectSettings.get_setting("display/window/size/viewport_width")
	var height = ProjectSettings.get_setting("display/window/size/viewport_height")
	cardTemp.global_position = Vector2(width/2, height/2) - self.position
	add_child(cardTemp)
