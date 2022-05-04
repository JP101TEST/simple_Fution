extends Control

export var text_Set_Lable:String=""

func _ready():
	$lable_Text.text=text_Set_Lable
	#print(GameData.text_test)
	
func _on_TB_pressed():
	load_game()
	
func load_game():
	var dir = Directory.new()
	dir.remove(GameData.save_location_slot_1)
