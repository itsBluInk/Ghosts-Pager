extends HBoxContainer

var statsFile:File = File.new() 
var statsFilePath:String = "res://LineEditSaving/stats.json" 
var stats:Dictionary = {}

func _ready():
	loadStatsFromFile()
	print(stats)
	fillValues()

func saveStatsToFile ()->void:
	statsFile.open(statsFilePath,File.WRITE)
	statsFile.store_line(to_json(stats))
	statsFile.close()

func loadStatsFromFile()->void:
	statsFile.open(statsFilePath,File.READ)
	stats = parse_json(statsFile.get_as_text())
	statsFile.close()

func _on_Level_text_changed(new_text):
	stats["Level"] = new_text
	saveStatsToFile()

func _on_Wounds_text_changed(new_text):
	stats["Wounds"] = new_text
	saveStatsToFile()

func _on_AP_text_changed(new_text):
	stats["AP"] = new_text
	saveStatsToFile()

func _on_Resistances1_text_changed(new_text):
	stats["Resistances1"] = new_text
	saveStatsToFile()

func _on_Resistances2_text_changed(new_text):
	stats["Resistances2"] = new_text
	saveStatsToFile()

func _on_Resistances3_text_changed(new_text):
	stats["Resistances3"] = new_text
	saveStatsToFile()

func _on_Condition_text_changed(new_text):
	stats["Condition"] = new_text
	saveStatsToFile()

func _on_FateDice_text_changed(new_text):
	stats["FateDice"] = new_text
	saveStatsToFile()

func _on_MoveDistance_text_changed(new_text):
	stats["MoveDistance"] = new_text
	saveStatsToFile()

func _on_Initiative_text_changed(new_text):
	stats["Initiative"] = new_text
	saveStatsToFile()

func _on_CarryCapacity_text_changed(new_text):
	stats["CarryCapacity"] = new_text
	saveStatsToFile()

func _on_InfoName_text_changed(new_text):
	stats["Name"] = new_text
	saveStatsToFile()

func _on_InfoRace_text_changed(new_text):
	stats["Race"] = new_text
	saveStatsToFile()

func _on_InfoGender_text_changed(new_text):
	stats["Sex"] = new_text
	saveStatsToFile()

func _on_InfoAge_text_changed(new_text):
	stats["Age"] = new_text
	saveStatsToFile()

func _on_InfoOrigin_text_changed(new_text):
	stats["Origin"] = new_text
	saveStatsToFile()

func _on_InfoHeight_text_changed(new_text):
	stats["Height"] = new_text
	saveStatsToFile()

func _on_InfoWeight_text_changed(new_text):
	stats["Weight"] = new_text
	saveStatsToFile()

func _on_InfoOccupation_text_changed(new_text):
	stats["Occupation"] = new_text
	saveStatsToFile()
	
func fillValues():
	$Stats/Level.text = stats["Level"]
	$Stats/Wounds.text = stats["Wounds"]
	$Stats/AP.text = stats["AP"]
	$Stats2/Resistances1.text = stats["Resistances1"]
	$Stats2/Resistances2.text = stats["Resistances2"]
	$Stats2/Resistances3.text = stats["Resistances3"]
	$Stats2/Condition.text = stats["Condition"]
	$Stats2/FateDice.text = stats["FateDice"]
	$Stats3/MoveDistance.text = stats["MoveDistance"]
	$Stats3/Initiative.text = stats["Initiative"]
	$Stats3/CarryCapacity.text = stats["CarryCapacity"]
	$BasicInfo/InfoName.text = stats["Name"]
	$BasicInfo/InfoRace.text = stats["Race"]
	$BasicInfo/InfoGender.text = stats["Sex"]
	$BasicInfo/InfoAge.text = stats["Age"]
	$BasicInfo/InfoOrigin.text = stats["Origin"]
	$BasicInfo/InfoHeight.text = stats["Height"]
	$BasicInfo/InfoWeight.text = stats["Weight"]
	$BasicInfo/InfoOccupation.text = stats ["Occupation"]
