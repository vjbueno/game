extends Node2D

var game

func _ready():
	game = get_tree().current_scene

func _on_DanoPlayer_body_entered(body):
	
	if(body.name == "Player"):
		game.conta_vida()


func _on_DanoInimigo1_body_entered(body):
	if(body.name == "Player"):
		print(body.name)
		$AnimatedSprite.animation = "morrendo"
		
func _on_AnimatedSprite_animation_finished():
	if ($AnimatedSprite.animation == "morrendo"):
		queue_free()
