extends Container

@onready var card = preload("res://cardHolder.tscn")
var startPosition
var cardHighlighted = false

func _on_mouse_entered() -> void:
	$Anim.play("Select")
	cardHighlighted = true


func _on_mouse_exited() -> void:
	$Anim.play("Deselect")
	cardHighlighted = false


func _on_gui_input(event: InputEvent) -> void:
	if(event is InputEventMouseButton) and (event.button_index == 1):
		if event.button_mask == 1:
			if cardHighlighted:
				var cardTemp = card.instantiate()
				get_tree().get_root().get_node("Board/CardHolder").add_child(cardTemp)
				Game.cardSelected = true
				if cardHighlighted:
					self.get_child(0).hide()
			elif event.button_mask == 0:
				if !Game.mouseOnPlacement:
					cardHighlighted = false
					self.get_child(0).show()
			
