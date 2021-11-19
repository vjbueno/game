extends KinematicBody2D


# declarando variaveis

#var do tipo constante
const MOVE_SPEED = 200 #velocidade do movimento do player
const GRAVITY = 50 #gravidade

#var do tipo simples
var y_velo = 0 #velocidade minima


func _physics_process(delta):
	var move_dir = 0
	
	if Input.is_action_pressed("ui_right"):
		move_dir += 1
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.animation = "correndo"
		
	elif Input.is_action_pressed("ui_left"):
		move_dir -= 1
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.animation = "correndo"
	else:
		$AnimatedSprite.animation = "parado"
		
	move_and_slide(Vector2(move_dir * MOVE_SPEED, y_velo),Vector2(0,-1))
