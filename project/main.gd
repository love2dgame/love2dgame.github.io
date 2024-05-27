extends Control

var lable:Label
# Called when the node enters the scene tree for the first time.
func _ready():
	lable = $VBoxContainer/Label
	load_game()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func save_game(str:String):
	var save_game = FileAccess.open("user://savegame.save", FileAccess.WRITE)
	save_game.store_line(str)
	print("save game:"+str)

func load_game():
	if not FileAccess.file_exists("user://savegame.save"):
		return # Error! We don't have a save to load.
	var save_game = FileAccess.open("user://savegame.save", FileAccess.READ)
	var line = save_game.get_line()
	lable.text = line+"(load)"
	print("load_game:"+line)

func _on_button_button_down():
	lable.text = "AAAA"
	save_game("AAAA")

func _on_button_2_button_down():
	lable.text = "BBBB"
	save_game("BBBB")


func _on_button_3_button_down():
	lable.text = "CCC"
	save_game("CCC")
