extends Node2D

const plat = preload("res://plataform.tscn")
var uma_plat

func _ready():
	var tamanho = 50
	
	var contador = 0
	while contador < 22:
		uma_plat = plat.instantiate()
		uma_plat.position.y = 625
		uma_plat.position.x = tamanho * (contador + 1) - 25
		self.add_child(uma_plat)
		contador += 1

	var locais = [
		1,0,0,0,1,0,
		1,0,0,0,1,
		1,1,1,1,1,
		1,1,1,1,1,1,1
	]
	
	contador = 0
	for i in locais:
		if i == 1:
			uma_plat = plat.instantiate()
			uma_plat.position.y = 300
			uma_plat.position.x = tamanho * (contador + 1) - 25
			self.add_child(uma_plat)
		contador += 1
