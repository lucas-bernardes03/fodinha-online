extends Control

@onready var card = preload("res://cardOnBoard.tscn")

func _on_mouse_entered() -> void:
	Game.mouseOnPlacement = true


func _on_mouse_exited() -> void:
	Game.mouseOnPlacement = false

func placeCard():
	var cardTemp = card.instantiate()
	add_child(cardTemp)
