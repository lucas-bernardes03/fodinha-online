extends Control

@onready var card = preload("res://scenes/cardOnBoard.tscn")

func _on_mouse_entered() -> void:
	Game.mouseOnPlacement = true


func _on_mouse_exited() -> void:
	Game.mouseOnPlacement = false

func placeCard(texture: Texture2D):
	var cardTemp = card.instantiate()
	cardTemp.get_node("CardImage").texture = texture
	add_child(cardTemp)
