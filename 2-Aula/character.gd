extends CharacterBody2D

@export var speed = 600
@export var gravidade = 800
@export var pulo = -300

func _physics_process(delta):
	velocity.y += delta * gravidade
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
	else:
		velocity.x = 0
		
	if Input.is_action_pressed("ui_up") and is_on_floor():
		velocity.y = pulo
		
	move_and_slide()
