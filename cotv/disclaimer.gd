extends Control
@onready var disclaimr: Label = $Disclaimr

var Value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	awaitT()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Value == true:
		get_tree().change_scene_to_file("res://main_menu.tscn")
func awaitT():
	await get_tree().create_timer(5.0).timeout
	Value =true
