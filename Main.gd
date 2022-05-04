extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var dwd=0
var dw=true
var tes="Good job"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _ready():
	$ColorRect.show()

func _process(delta):
	#if $ColorRect.color.a>0:
	if dw == true:
		if !get_node("ColorRect"):
			dw=false
		else: 
			print($ColorRect.color.a)
			$ColorRect.color.a-=0.01
			if $ColorRect.color.a<=0:
				$ColorRect.queue_free()

func _on_TextureButton_pressed():
	var dialog_test =Dialogic.start("Cp_1")
	Dialogic.set_variable("name","Job")
	add_child(dialog_test)
	if Dialogic.get_variable("Score_test_one")==String(0):
		print("hahaha")
	print(Dialogic.get_variable("name"))
	print(Dialogic.get_variable("Score_test_one"))
	dialog_test.connect("dialogic_signal",self,'print_Score_test_one')

func print_Score_test_one(print_Score_test_one):
	print("print_Score_test_one")
	print("dwd ="+ String(dwd))
	dwd=Dialogic.get_variable("Score_test_one")
	
func _input(event):
	if Input.is_action_pressed("up_Key") and Input.is_action_pressed("dow_key"):
		print("up+down")
	else:
		if Input.is_action_pressed("up_Key"):
			$Node2D.get_node("AnimationPlayer").play("run")
			print("up")
		if Input.is_action_pressed("dow_key"):
			$Node2D.get_node("AnimationPlayer").play("New Anim")
			print("down")
