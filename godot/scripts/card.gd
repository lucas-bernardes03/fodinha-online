extends Container

@onready var card = preload("res://scenes/cardHolder.tscn")
var startPosition
var cardHighlighted = false

var rank
var suit
var strength

func set_up_card(cardRank: String, cardSuit: String, cardStrength: int):
	rank = cardRank
	suit = cardSuit
	strength = cardStrength

func _on_mouse_entered() -> void:
	$Anim.play("Select")
	cardHighlighted = true


func _on_mouse_exited() -> void:
	$Anim.play("Deselect")
	cardHighlighted = false


func _on_gui_input(event: InputEvent) -> void:
	if(event is InputEventMouseButton) and (event.button_index == MOUSE_BUTTON_LEFT):
		if event.button_mask == 1:
			if cardHighlighted:
				var cardTemp = card.instantiate()
				cardTemp.get_node("CardImage").texture = self.get_node("CardImage").texture
				get_tree().get_root().get_node("Board/CardHolder").add_child(cardTemp)
				Game.cardSelected = true
				if cardHighlighted:
					self.get_child(0).hide()
		elif event.button_mask == 0:
			if !Game.mouseOnPlacement:
				cardHighlighted = false
				self.get_child(0).show()
			else:
				get_node("../../CardPlacement").placeCard(self.get_node("CardImage").texture)
				self.queue_free()
			
			for i in get_tree().get_root().get_node("Board/CardHolder").get_child_count():
				get_tree().get_root().get_node("Board/CardHolder").get_child(i).queue_free()
			Game.cardSelected = false
