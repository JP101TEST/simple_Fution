extends Control

export var text_Set_Lable:String=""

func _ready():
	$lable_Text.text=text_Set_Lable
	#print(GameData.text_test)
	
func _on_TB_pressed():
	print(GameData.text_test)
	print(GameData.score)
	print(GameData.MIN_SCORE)
