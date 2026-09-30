extends Node2D

func _ready():
	pass

var stars_collected = 0

func collect_star():
	stars_collected += 1
	$UI/starcounter.text = "Stars: " + str(stars_collected) + "/5"

	if stars_collected >= 5:
		$UI/winmessage.visible = true
		get_tree().paused = true
