# Õpime GDScript keelt
# Jass Õunapuu

extends Node    
var raha = 4 
var kaup = 6

var kulg1 = 5
var kulg2 = 6
func _ready():
	if raha < kaup:
		var puudu = kaup - raha
		print("haha! sa oled vaene, sul on puudu ", puudu, " raha")
	else:
		print("sul on piisavalt raha kauba ostmiseks")
	if kulg1 == kulg2:
		print("See on ruut")
		print("Selle pindala on ", kulg1*kulg2)
	else:
		print("See on ristkülik")
		print("Selle pindala on ", kulg1*kulg2)


