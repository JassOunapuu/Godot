# Õpime GDScript keelt
# Jass Õunapuu

extends Node

func _ready():
	var HP1 = 100
	var HP2 = 100
	while HP1 > 0:
		var random1 = RandomNumberGenerator.new()
		random1.randomize()
		var rand1 = random1.randi_range(5,20)
		
		var random2 = RandomNumberGenerator.new()
		random2.randomize()
		var rand2 = random2.randi_range(10,25)
		
		print("P1 Hit: ", rand1, "  P1 HP: ", HP1)
		HP1 -= rand2
		print("P2 Hit: ", rand2, "  P2 HP: ", HP2)
		HP2 -= rand1
	if HP1 < HP2:
		print("P2 võitis!")
	else:
		print("P1 võitis!")
