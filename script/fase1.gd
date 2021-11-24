extends Node2D

var score = 0;

func _ready():
	$HUB/Score.text = "Score: " + str(score)

func conta_score():
	score = score + 1
	$HUB/Score.text = "Score: " + str(score)
