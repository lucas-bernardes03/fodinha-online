extends Container

var playerId
var cardsOnHand

func set_up_player(id: String):
	playerId = id
	get_node("Sprite2D/PlayerName").text = playerId
