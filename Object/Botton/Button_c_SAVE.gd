extends Control

export var text_Set_Lable:String=""
var intt:int=0
func _ready():
	$lable_Text.text=text_Set_Lable
	var dir = Directory.new()
	dir.open("res://")
	if not dir.dir_exists("Save"):
		dir.make_dir("Save")
	dir.make_dir("Save0")
	if dir.dir_exists("Save" +String(intt)):
		print("1")
	#print(GameData.text_test)
	
func _on_TB_pressed():
	save_game()
	
func save_game():
	GameData.save_func_slot_1()
	var save_game_file = File.new()
	save_game_file.open(GameData.save_location_slot_1,File.WRITE)
	save_game_file.store_line(to_json(GameData.save_slot_1))
	save_game_file.open("res://Save/save_game32.txt",File.WRITE)
	save_game_file.store_line(to_json(GameData.save_slot_1))
	if save_game_file.file_exists("res://Save/"+"save_game32.txt"):
		print("res://Save/save_game32.txt")
	#print("res://Save/save_game32.txt")
	save_game_file.close()
