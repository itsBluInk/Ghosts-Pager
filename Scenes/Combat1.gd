extends VBoxContainer

var combatFile:File = File.new()
var combatFilePath:String = "res://LineEditSaving/combat1.json"
var combat:Dictionary = {}

func _ready():
	loadCombatFromFile()

func _on_Progress_text_changed(new_text):
	pass # Replace with function body.

func _on_Skill_text_changed(new_text):
	pass # Replace with function body.

func _on_SkillLevel_text_changed(new_text):
	pass # Replace with function body.
