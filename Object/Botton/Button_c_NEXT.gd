extends Control

export var text_Set_Lable:String=""
var intt:int=0
func _ready():
	$lable_Text.text=text_Set_Lable
	#print(GameData.text_test)
	
func _on_TB_pressed():
	if intt==0:
		get_node("../Main").hide()
		intt=1
	else:
		get_node("../Main").show()
		intt=0
