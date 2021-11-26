extends Node2D

func _on_DanoPlayer_body_entered(body):
	
	if(body.name == "Player"):
		print(body.name)


func _on_DanoInimigo1_body_entered(body):
	if(body.name == "Player"):
		print(body.name)
		$AnimatedSprite.animation = "morrendo"
		
func _on_AnimatedSprite_animation_finished():
	if ($AnimatedSprite.animation == "morrendo"):
		queue_free()
