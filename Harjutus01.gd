# Õpime GDScript keelt
# Jass Õunapuu
 
extends Node
var playerName = "Godot robot"
var pts = 0
var dmg = 0.5
var rng = RandomNumberGenerator.new()
var nimi = "naine"
var elud = 2
var arv1 = 5


func _ready():
	print(nimi, " ", elud)
	print(len(nimi))
	print(elud + arv1)
	rng.randomize()
	var my_random_number = rng.randi_range(0,19)
	print("suvaline number: ", my_random_number)
