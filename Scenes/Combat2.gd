extends HBoxContainer

var combatFile:File = File.new()
var combatFilePath:String = "res://LineEditSaving/combat2.json"
var combat:Dictionary = {}

func _ready():
	loadCombatFromFile()
	print(combat)
	fillCombatValues()

func saveCombatToFile()->void:
	combatFile.open(combatFilePath,File.WRITE)
	combatFile.store_line(to_json(combat))
	combatFile.close()

func loadCombatFromFile()->void:
	combatFile.open(combatFilePath,File.READ)
	combat = parse_json(combatFile.get_as_text())
	combatFile.close()

func _on_Progress_text_changed(new_text):
	combat["progress"] = new_text
	saveCombatToFile()

func _on_Skill_text_changed(new_text):
	combat["skill"] = new_text
	saveCombatToFile()

func _on_Level_text_changed(new_text):
	combat["level"] = new_text
	saveCombatToFile()

func fillCombatValues():
	$Progress.text = combat["progress"]
	$Skill.text = combat["skill"]
	$Level.text = combat["level"]
