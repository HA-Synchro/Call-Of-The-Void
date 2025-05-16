extends Control

var dialogue : DialogueResource = load("res://game.dialogue")

func _ready() -> void:
	var dialogue_ballon : Node = DialogueManager.show_dialogue_balloon(dialogue, "start")
	
func end_game() -> void:
	$EndGameCanvasLayer.show()
