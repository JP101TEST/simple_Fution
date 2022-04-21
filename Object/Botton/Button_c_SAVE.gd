extends Control

export var text_Set_Lable:String=""

func _ready():
	$lable_Text.text=text_Set_Lable
	#print(GameData.text_test)
	
func _on_TB_pressed():
	save_game()
	
func save_game():
	GameData.save_func_slot_1()
	var save_game_file = File.new()
	save_game_file.open(GameData.save_location_slot_1, File.WRITE)
	save_game_file.store_line(to_json(GameData.save_slot_1))
	save_game_file.close()
