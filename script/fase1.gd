extends Node2D

var score = 0;
var vida = 3;

func _ready():
	$HUB/Score.text = "Score: " + str(score)
	$HUB/Vida.animation = str(vida)
	
func conta_score():
	score = score + 1
	$HUB/Score.text = "Score: " + str(score)
	
func conta_vida():
	vida = vida - 1
	$HUB/Vida.animation = str(vida)
	if(vida == 0):
		$Player.morte_player()

