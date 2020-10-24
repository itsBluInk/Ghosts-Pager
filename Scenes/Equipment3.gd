extends VBoxContainer

var equipmentFile:File = File.new() 
var equipmentFilePath:String =  "res://LineEditSaving/equipment2.json"
var equipment:Dictionary = {}

func _ready():
	loadEquipmentFromFile()
	print(equipment)
	FillEquipmentValues()

func saveEquipmentToFile ()->void:
	equipmentFile.open(equipmentFilePath,File.WRITE)
	equipmentFile.store_line(to_json(equipment))
	equipmentFile.close()

func loadEquipmentFromFile()->void:
	equipmentFile.open(equipmentFilePath,File.READ)
	equipment = parse_json(equipmentFile.get_as_text())
	equipmentFile.close()

func _on_Name_text_changed(new_text):
	equipment["Name"] = new_text
	saveEquipmentToFile()

func _on_Section_text_changed(new_text):
	equipment["Section"] = new_text
	saveEquipmentToFile()

func _on_Resist1_text_changed(new_text):
	equipment["Resist_1"] = new_text
	saveEquipmentToFile()

func _on_Resist2_text_changed(new_text):
	equipment["Resist_2"] = new_text
	saveEquipmentToFile()

func _on_Resist3_text_changed(new_text):
	equipment["Resist_3"] = new_text
	saveEquipmentToFile()

func _on_tR_text_changed(new_text):
	equipment["tR"] = new_text
	saveEquipmentToFile()


func _on_Description_text_changed(new_text):
	equipment["Description"] = new_text
	saveEquipmentToFile()

func FillEquipmentValues():
	$HBoxContainer/Name.text = equipment["Name"]
	$HBoxContainer/Section.text = equipment["Section"]
	$HBoxContainer/Resist1.text = equipment["Resist_1"]
	$HBoxContainer/Resist2.text = equipment["Resist_2"]
	$HBoxContainer/Resist3.text = equipment["Resist_3"]
	$HBoxContainer/tR.text = equipment["tR"]
	$Description.text = equipment["Description"]
