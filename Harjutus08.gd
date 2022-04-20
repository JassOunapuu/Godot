extends Node
var aSkoor = 0
var pSkoor = 0
var playerValik = ""
var arvutiValik = ""
var KiviPaberKaarid = ["Kivi", "Paber", "Käärid"]
func _ready():
	pass
func _process(delta):
	pass
func mang(playerValik):
	if pSkoor == 10 or aSkoor == 10:
		$"Pealkiri".text = "Mäng läbi!"
		get_tree().paused = true
	KiviPaberKaarid.shuffle()
	var arvutiValik = KiviPaberKaarid[0]
	$"Valik".text = playerValik
	$"Arvuti".text = arvutiValik
	$"TextureRect/PlayerPunktid".text ="Punktid: "+ str(pSkoor)
	$"TextureRect/ArvutiPunktid".text ="Punktid: "+ str(aSkoor)
	
	if arvutiValik == "Kivi" and playerValik == "Käärid":
		$"Tulemus".text = "Kaotasid!"
		aSkoor += 1
	elif arvutiValik == "Kivi" and playerValik == "Kivi":
		$"Tulemus".text = "Jäid viiki!"
	elif arvutiValik == "Kivi" and playerValik == "Paber":
		$"Tulemus".text = "Võitsid!"
		pSkoor += 1
		
	elif arvutiValik == "Käärid" and playerValik == "Käärid":
		$"Tulemus".text = "Jäid viiki!"
	elif arvutiValik == "Käärid" and playerValik == "Kivi":
		$"Tulemus".text = "Võitsid!"
		pSkoor += 1
	elif arvutiValik == "Käärid" and playerValik == "Paber":
		$"Tulemus".text = "Kaotasid!"
		aSkoor += 1
	
	elif arvutiValik == "Paber" and playerValik == "Käärid":
		$"Tulemus".text = "Võitsid!"
		pSkoor += 1
	elif arvutiValik == "Paber" and playerValik == "Kivi":
		$"Tulemus".text = "Kaotasid!"
		aSkoor += 1
	elif arvutiValik == "Paber" and playerValik == "Paber":
		$"Tulemus".text = "Jäid viiki!"
	
func _on_Kivi_pressed():
	playerValik = "Kivi"
	mang("Kivi")
func _on_Paber_pressed():
	playerValik = "Paber"
	mang("Paber")
func _on_Kaarid_pressed():
	playerValik = "Käärid"
	mang("Käärid")


