extends Sprite2D

@export var velocidade =4

func minha_func():
	position.y += velocidade
# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = 543
	position.y= 65
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void: 
	minha_func()
