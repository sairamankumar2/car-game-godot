extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	#get_node("StartButton").connect("pressed",self,"_on_StartButton_pressed()")
	#get_node("OptionButton").connect("pressed",self,"_on_OptionButton_pressed()")
	pass


func _on_StartButton_pressed():
	get_tree().change_scene("res://track.scn")
	
func _on_OptionButton_pressed():
	get_tree().change_scene("res://options_screen.scn") #replace with function body


func _on_QuitButton_pressed():
	pass # replace with function body
