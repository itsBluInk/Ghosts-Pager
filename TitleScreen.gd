extends Control

onready var opening_text_anim:AnimationPlayer = $Menu/initialize/opening_text/opeining_text_anim_player
onready var access_granted_anim:AnimationPlayer = $Menu/initialize/opening_text/access_granted/access_granted_anim_player
onready var scroll_up_anim:AnimationPlayer = $Menu/initialize/scroll_up_anim_player
onready var buttons:VBoxContainer = $buttons

func _ready():
	play_initialization()
	buttons.visible = false
	
func play_initialization():
	opening_text_anim.play("opening_text_anim")

func _on_opeining_text_anim_player_animation_finished(anim_name):
	access_granted_anim.play("access_granted_anim")

func _on_access_granted_anim_player_animation_finished(anim_name):
	scroll_up_anim.play("scroll_up")

func _on_scroll_up_anim_player_animation_finished(anim_name):
	buttons.visible = true
