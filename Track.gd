extends Spatial

	
var time_start = 2
var time_now = 0
var best_lap=0

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Home_screen.scn")

func _ready():
    time_start = OS.get_unix_time()
    set_process(true)

func _process(delta):
    time_now = OS.get_unix_time()
    var elapsed = time_now - time_start
    var minutes = elapsed / 60
    var seconds = elapsed % 60
    var str_elapsed = "%02d : %02d" % [minutes, seconds]
    var elap="Time Elapsed : "+str(str_elapsed)
    get_node("scoreDisplay").set_text(str(elap))