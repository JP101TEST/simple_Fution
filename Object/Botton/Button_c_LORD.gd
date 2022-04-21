extends Control

export var text_Set_Lable:String=""

func _ready():
	$lable_Text.text=text_Set_Lable
	#print(GameData.text_test)
	
func _on_TB_pressed():
	load_game()
	
func load_game():
	var save_game = File.new()
	
	if not save_game.file_exists(GameData.save_location_slot_1):
		return
	save_game.open(GameData.save_location_slot_1, File.READ)
	var nodeData = parse_json(save_game.get_line())
	GameData.run_stop=nodeData["run_stop"]
	GameData.score=nodeData["score"]
	save_game.close()
