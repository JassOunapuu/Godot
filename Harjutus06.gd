# Jass Õunapuu
# 13.04.2022

extends Node
var salv = 5
var hp = 100
var damage = 0
var hit = 0
var loop = true
var lask = 0

func _ready():
	print("-----------------------------------")
	print("---------- Tulista kooli ----------")
	print("---------- Jass Õunapuu -----------")
	print("-----------------------------------")
	
	
func _process(delta):
	var random = RandomNumberGenerator.new()
	random.randomize()
	var rand = random.randi_range(8,12)
	
	if Input.is_action_just_pressed("lase") and salv > 0 and hp > 0:
		
		lask += 1
		salv -= 1
		print("Elud: ", hp)
		print("piu piu")
		print("salves ", salv)
		hp -= rand
	if Input.is_action_just_pressed("lae"):
		salv = 5
		print("Laen....")
	if hp <= 0:
		print("----------- Mäng läbi ----------")
		print("Laske: ", lask)
		get_tree().quit()



