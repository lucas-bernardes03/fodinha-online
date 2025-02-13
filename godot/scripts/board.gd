extends Node2D

@onready var card_database_reference = preload("res://scripts/card_database.gd")
@onready var card = preload("res://scenes/card.tscn")
@onready var player = preload("res://scenes/player.tscn")
@onready var oppCard = preload("res://scenes/cardOnPlayerHand.tscn")
var deck

var playerList = []

func _ready() -> void:
	deck = card_database_reference.CARDS.keys()
	deck.shuffle()

func _on_deal_button_pressed() -> void:
	for i in 5:
		var card_drawn = deck[0]
		deck.erase(card_drawn)
		
		var new_card = card.instantiate()
		var image_path = str("res://assets/cards/" + card_database_reference.CARDS[card_drawn][3])
		new_card.get_node("CardImage").texture = load(image_path)
		var rank = card_database_reference.CARDS[card_drawn][0]
		var suit = card_database_reference.CARDS[card_drawn][1]
		var strength = card_database_reference.CARDS[card_drawn][2]
		new_card.set_up_card(rank, suit, strength)
		$CanvasLayer/CardContainer.add_child(new_card)
		
	for player in $CanvasLayer/PlayersContainer.get_children():
		for i in 5:
			var new_card = oppCard.instantiate()
			player.get_node("Sprite2D/CardContainer").add_child(new_card)
		


func _on_add_player_pressed() -> void:
	if(playerList.size() < 5): 	
		var new_player = player.instantiate()
		var id = "P" + str(randf())
		new_player.set_up_player(id)
		playerList.append(new_player)
		$CanvasLayer/PlayersContainer.add_child(new_player)
