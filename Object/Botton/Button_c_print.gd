extends Control

export var text_Set_Lable:String=""

var timeDict_d_m_y = OS.get_datetime()
var timeDict = OS.get_time()
var month = timeDict_d_m_y["month"]
var day = timeDict_d_m_y["day"]
var hour = timeDict.hour
var minute = timeDict.minute
var col:Array=[0,0]
func _ready():
	$lable_Text.text=text_Set_Lable
	#print(GameData.text_test)

func _on_TB_pressed():
	print("Day = "+String(month)+":"+String(day))
	print("Time = "+String(hour)+":"+String(minute))
	col=[hour,minute]
	print(col)
	print(GameData.text_test)
	print(GameData.score)
	print(GameData.MIN_SCORE)
