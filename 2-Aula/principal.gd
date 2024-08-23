extends Node2D

@export var magic_number = 3
var imprimiu = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print_debug("Start the Game") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if magic_number > 5 and not imprimiu:
		print_debug("Numero magico aumentou")
		imprimiu = true
