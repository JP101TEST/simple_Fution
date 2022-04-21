extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var run_stop:int=1
# Called when the node enters the scene tree for the first time.
var text_test:String="Test is rady"
var score:int =0

const MIN_SCORE:int = 0

var save_slot_1 = {
	"run_stop" : run_stop,
	"score" : score
	}
func save_func_slot_1():
	save_slot_1.run_stop=run_stop
	save_slot_1.score=score

var save_location_slot_1:String="res://Save/save_game.txt";
#const save_slot_1="res://Save/save_game.txt"
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
