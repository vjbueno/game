extends KinematicBody2D


# declarando variaveis

#var do tipo constante
const MOVE_SPEED = 350 #velocidade do movimento do player
const GRAVITY = 50 #gravidade
const JUMP_FORCE = 1200 #força do pulo do player
const MAX_FALL_SPEED = 500 #velocidade maxima do player

#var do tipo simples
var y_velo = 0 #velocidade minima
var isDead = false


func _physics_process(delta):
	if !(isDead):
		var move_dir = 0
		var grounded = is_on_floor()
		var no_chao = $RayEsquerda.is_colliding() or $RayDireita.is_colliding()
		
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
			
		if grounded and Input.is_action_just_pressed("jump"):
			y_velo = -JUMP_FORCE
			
		move_and_slide(Vector2(move_dir * MOVE_SPEED, y_velo),Vector2(0,-1))
		
		y_velo += GRAVITY
		
		if grounded and y_velo >=0:
			y_velo = 5
			
		if y_velo > MAX_FALL_SPEED:
			y_velo = MAX_FALL_SPEED
		
func morte_player():
	$AnimatedSprite.animation = "morrendo"
	isDead = true
