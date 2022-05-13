extends Node2D
var elud = 3
var character_pos
func _ready():
	pass 


func _process(delta):
	var character_path =get_node("Player")
	character_pos = character_path.position
	print(character_pos.y)
	$"Elud".text = "Elud: "+ str(elud)
	if character_pos.y >= 600:
		$Player.position.x = 120
		$Player.position.y = 50
		elud -= 1
	if elud == 0:
		get_tree().paused = true
		$"gameover".text = "GAME OVER"
