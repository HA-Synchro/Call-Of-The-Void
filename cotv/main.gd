extends Control
@onready var credits: Label = $EndGameCanvasLayer/Credits
@onready var credits_2: Label = $EndGameCanvasLayer/Credits2
@onready var credits_3: Label = $EndGameCanvasLayer/Credits3
@onready var end_game_message: Label = $EndGameCanvasLayer/EndGameMessage
@onready var button: Button = $EndGameCanvasLayer/Button

var dialogue : DialogueResource = load("res://game.dialogue")

func _ready() -> void:
	var dialogue_ballon : Node = DialogueManager.show_dialogue_balloon(dialogue, "start")
	
func end_game() -> void:
	$EndGameCanvasLayer.show()
	end_game_message.visible = true
	credits.visible = true
	credits_2.visible = true
	credits_3.visible = true
	button.visible = true
