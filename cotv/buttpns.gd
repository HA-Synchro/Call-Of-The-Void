extends Control
@onready var start: Button = $Start
@onready var quit: Button = $Quit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	start.pressed.connect(onStart)
	quit.pressed.connect(onQuit)

func onStart():
	get_tree().change_scene_to_file("res://main.tscn")
func onQuit():
	get_tree().quit()
