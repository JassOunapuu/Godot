# Jass Õunapuu
# 13.04.2022

extends Node


var tasu = 0
var punktid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]

func _ready():
	print("Tasu on ", maksud(39,3), " eurot")
	print("Eksamipunktide keskmine: ", keskmine(punktid))
	naita()
	hinded(punktid)
	
func maksud(tunnid, tunnitasu):
	if tunnid < 40:
		tasu = tunnid * tunnitasu
	else:
		tasu = 40 * tunnitasu + (tunnid - 40) * 1.5 * tunnid
	return tasu
	
func keskmine(p):
	var a = len(p)
	var sum = 0
	for i in p:
		sum += i
	var c = sum / a
	return c
	
func naita():
	for i in punktid:
		print(i)
	
func hinded(p):
	for i in p:
		if i >= 90:
			print(i, "p - 5")
		elif i >= (75):
			print(i, "p - 4")
		elif i >= (50):
			print(i, "p - 3")
		else:
			print(i, "p - 2")
