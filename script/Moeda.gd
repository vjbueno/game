extends Area2D

var game

func _ready():
	game = get_tree().current_scene

func _on_moeda_body_entered(body):
	#print(body.name)
	
	# se o player entrar em contato com a moeda:
	if (body.name == "Player"):
		#faça o objeto desaparecer:
		queue_free()
		#chamando função conta score após o player entrar em contato com a moeda
		game.conta_score()
