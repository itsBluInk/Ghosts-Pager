extends HBoxContainer

var statsFile:File = File.new() #creates a working file for the info to go in
var statsFilePath:String = "res://LineEditSaving/stats.txt" 
var stats:Dictionary = {}

func _ready():
	loadStatsFromFile()
	print(stats)

func saveStatsToFile ()->void:
	statsFile.open(statsFilePath,File.WRITE)
	statsFile.store_line(to_json(stats))
	statsFile.close()

func loadStatsFromFile()->void:
	statsFile.open(statsFilePath,File.READ)
	stats = parse_json(statsFile.get_as_text())
	statsFile.close()

func _on_Level_text_entered(new_text):
	stats["Level"] = new_text
	saveStatsToFile()

func _on_Wounds_text_entered(new_text):
	stats["Wounds"] = new_text
	saveStatsToFile()

func _on_AP_text_entered(new_text):
	stats["AP"] = new_text
	saveStatsToFile()

func _on_Resistances1_text_entered(new_text):
	stats["Resistances1"] = new_text
	saveStatsToFile()

func _on_Resistances2_text_entered(new_text):
	stats["Resistances2"] = new_text
	saveStatsToFile()

func _on_Resistances3_text_entered(new_text):
	stats["Resistances3"] = new_text
	saveStatsToFile()

func _on_Condition_text_entered(new_text):
	stats["Condition"] = new_text
	saveStatsToFile()

func _on_Fate_Dice_text_entered(new_text):
	stats["FateDice"] = new_text
	saveStatsToFile()

func _on_MoveDistance_text_entered(new_text):
	stats["MoveDistance"] = new_text
	saveStatsToFile()

func _on_Initiative_text_entered(new_text):
	stats["Initiative"] = new_text
	saveStatsToFile()

func _on_CarryCapacity_text_entered(new_text):
	stats["CarryCapacity"] = new_text
	saveStatsToFile()
