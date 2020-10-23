extends Control

onready var opening_text_anim:AnimationPlayer = $Menu/initialize/opening_text/opeining_text_anim_player
onready var access_granted_anim:AnimationPlayer = $Menu/initialize/opening_text/access_granted/access_granted_anim_player
onready var buttons:VBoxContainer = $buttons

func _ready():
	play_initialization()
	buttons.visible = false
	
func play_initialization():
	opening_text_anim.play("opening_text_anim")

func _on_opeining_text_anim_player_animation_finished(anim_name):
	access_granted_anim.play("access_granted_anim")

func _on_access_granted_anim_player_animation_finished(anim_name):
	$Menu/initialize.visible = false
	buttons.visible = true

func _on_personal_info_pressed():
	get_tree().change_scene("res://Scenes/Personal Info.tscn")	

func _on_Equipment_pressed():
	get_tree().change_scene("res://Scenes/Equipment.tscn")	

func _unhandled_key_input(event):
	if Input.is_action_pressed("ui_accept"):
		print("Skip")
		opening_text_anim.stop()
		access_granted_anim.stop()
		buttons.visible = true
		$Menu/initialize.visible = false
