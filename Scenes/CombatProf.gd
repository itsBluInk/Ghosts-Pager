extends HBoxContainer

var combatprofFile:File = File.new()
var combatprofFilePath:String = "res://LineEditSaving/combatprof.json"
var combatprof:Dictionary = {}

func _ready():
	loadCombatprofFromFile()
	print(combatprof)
	fillCombatprofValues()

func saveCombatprofToFile()->void:
	combatprofFile.open(combatprofFilePath,File.WRITE)
	combatprofFile.store_line(to_json(combatprof))
	combatprofFile.close()

func loadCombatprofFromFile()->void:
	combatprofFile.open(combatprofFilePath,File.READ)
	combatprof = parse_json(combatprofFile.get_as_text())
	combatprofFile.close()

func _on_Progress_text_changed(new_text):
	combatprof["progress"] = new_text
	saveCombatprofToFile()

func _on_CP_Level_text_changed(new_text):
	combatprof["level"] = new_text
	saveCombatprofToFile()

func fillCombatprofValues():
	$CombatProf/Progress.text = combatprof["progress"]
	$Level.text = combatprof["level"]
