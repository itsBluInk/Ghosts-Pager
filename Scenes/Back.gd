extends Control

func _unhandled_key_input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://MainMenu.tscn")

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Equipment.tscn")
