extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if GameData.run_stop==1:
		$Label2.text=String(GameData.score)
	else:
		$Label2.text=GameData.text_test


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
