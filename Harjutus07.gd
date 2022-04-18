extends Node

var salv = 5
var hp = 100
var damage = 0
var hit = 0
var loop = true
var lask = 0
var kuulid = 5

func _ready():
	$"GameOver".font
	var sonad = ["kuningas", "maailmas", "kulda"]
	var tekst = "Elas kord %s, kes üle kõige %s armastas %s."
	
	
func _process(delta):
	$"Kuulid".text = "Kuulid: "+ str(salv)
	$"Elud".text = "Elud: "+ str(hp)
	
	var random = RandomNumberGenerator.new()
	random.randomize()
	var rand = random.randi_range(8,12)
	
	if Input.is_action_just_pressed("lase") and salv > 0 and hp > 0:
		lask += 1
		$"Lasud".text = "Laske: "+  str(lask)
		salv -= 1
		$"Tekst".text = "piu piu"
		hp -= rand
	if Input.is_action_just_pressed("lae"):
		salv = 5
		$"Tekst".text = "Laen...."
	if hp <= 0:
		hp = 0
		$"Elud".text = "Elud: "+ str(hp)
		$"GameOver".text = "Game Over!"
		print("----------- Mäng läbi ----------")
		print("Laske: ", lask)
		get_tree().paused = true
