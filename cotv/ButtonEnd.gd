extends CanvasLayer

@onready var button: Button = $Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	button.pressed.connect(QUIT)

func QUIT():
	get_tree().quit()
