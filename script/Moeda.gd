extends Area2D



func _on_moeda_body_entered(body):
	#print(body.name)
	
	# se o player entrar em contato com a moeda
	if (body.name == "Player"):
		#faça o objeto desaparecer
		queue_free()
