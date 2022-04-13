# Jass Õunapuu
# 13.04.2022

extends Node
var playerstats = {"hp":[98,56], "gold":[40,60]}
var pikim = 0
var nimi = "pole"
var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
func _ready():
	#Kuvan mängijate arvu ja lisan enda nime nende hulka
	print("Mängijaid on ", len(players))
	print(players[0])
	players.sort()
	players.append("Jass")
	for player in players:
		var pikkus = len(player)
		if pikkus > pikim:
			pikim = pikkus
			nimi = player
	print("pikim nimi: ", nimi)
	print("")
	for player in players:
		print(player)
	
	#korrutan kulda 5-ga ja näitan mängijatele kui palju seda on
	for i in range(0,1):
		playerstats.gold[0] = playerstats.gold[0]*5
		playerstats.gold[1] = playerstats.gold[1]*5
		print("Mängijal 1 on ", playerstats.gold[0], " kulda")
		print("Mängijal 2 on ", playerstats.gold[1], " kulda")
