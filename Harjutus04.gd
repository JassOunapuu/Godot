extends Node
var pikim = 0
var nimi = "pole"
var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
func _ready():
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
