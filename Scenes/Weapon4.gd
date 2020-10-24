extends VBoxContainer

var weaponFile:File = File.new()
var weaponFilePath:String = "res://LineEditSaving/weapon2.json"
var weapon:Dictionary = {}

func _ready():
	loadWeaponFromFile()
	print(weapon)
	fillWeaponValues()

func saveWeaponToFile()->void:
	weaponFile.open(weaponFilePath,File.WRITE)
	weaponFile.store_line(to_json(weapon))
	weaponFile.close()

func loadWeaponFromFile()->void:
	weaponFile.open(weaponFilePath,File.READ)
	weapon = parse_json(weaponFile.get_as_text())
	weaponFile.close()

func _on_Name_text_changed(new_text):
	weapon["Name"] = new_text
	saveWeaponToFile()

func _on_Type_text_changed(new_text):
	weapon["Type"] = new_text
	saveWeaponToFile()

func _on_Strength_text_changed(new_text):
	weapon["Strength"] = new_text
	saveWeaponToFile()

func _on_Attacks_text_changed(new_text):
	weapon["Attacks"] = new_text
	saveWeaponToFile()

func _on_Shots_text_changed(new_text):
	weapon["Shots"] = new_text
	saveWeaponToFile()

func _on_Efr_text_changed(new_text):
	weapon["Efr"] = new_text
	saveWeaponToFile()

func _on_Comments_text_changed(new_text):
	weapon["Comments"] = new_text
	saveWeaponToFile()

func _on_Line2_text_changed(new_text):
	weapon["Line2"] = new_text
	saveWeaponToFile()

func _on_Line3_text_changed(new_text):
	weapon["Line3"] = new_text
	saveWeaponToFile()

func _on_Line4_text_changed(new_text):
	weapon["Line4"] = new_text
	saveWeaponToFile()

func _on_Line5_text_changed(new_text):
	weapon["Line5"] = new_text
	saveWeaponToFile()

func fillWeaponValues():
	$HBoxContainer2/Name.text = weapon["Name"]
	$HBoxContainer2/Type.text = weapon["Type"]
	$HBoxContainer2/Strength.text = weapon["Strength"]
	$HBoxContainer2/Attacks.text = weapon["Attacks"]
	$HBoxContainer2/Shots.text = weapon["Shots"]
	$HBoxContainer2/Efr.text = weapon["Efr"]
	$Comments.text = weapon["Comments"]
	$Line2.text = weapon["Line2"]
	$Line3.text = weapon["Line3"]
	$Line4.text = weapon["Line4"]
	$Line5.text = weapon["Line5"]
	$Line5.text = weapon["Line5"]
