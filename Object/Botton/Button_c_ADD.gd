extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var text_Set_Lable:String=""
# Called when the node enters the scene tree for the first time.
func _ready():
	#get_node("Label").text=text_Set_Lable
	$lable_Text.text=text_Set_Lable
	#print(GameData.text_test)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TB_pressed():
	if GameData.run_stop==0:
		GameData.run_stop=1
		GameData.score+=1
	else:
		GameData.score+=1
		#print(GameData.score)
