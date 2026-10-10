extends Node2D
var score: int = 0

func _ready() -> void:
	for coin in get_tree().get_nodes_in_group("coins"):
		coin.coin_collected.connect(_on_coin_collected)

func _on_coin_collected() -> void:
	
	score += 1
	print("Score: ", score)
