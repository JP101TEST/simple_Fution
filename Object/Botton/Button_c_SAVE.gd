extends Control

export var text_Set_Lable:String=""

func _ready():
	$lable_Text.text=text_Set_Lable
	#print(GameData.text_test)
	
func _on_TB_pressed():
	GameData.run_stop=0
	GameData.text_test="Fun is not ready"
	#var save_file=File.new()
	#save_file.open("res://save_game.json",_File.WRITE)
