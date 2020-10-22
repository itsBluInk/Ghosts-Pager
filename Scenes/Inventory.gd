extends MarginContainer

var inventoryFile:File = File.new() 
var inventoryFilePath:String = "res://LineEditSaving/inventory.txt" 
var inventory:Dictionary = {}

func _ready():
	loadInventoryFromFile()
	print(inventory)
	FillInventoryValues()

func saveInventoryToFile ()->void:
	inventoryFile.open(inventoryFilePath,File.WRITE)
	inventoryFile.store_line(to_json(inventory))
	inventoryFile.close()

func loadInventoryFromFile()->void:
	inventoryFile.open(inventoryFilePath,File.READ)
	inventory = parse_json(inventoryFile.get_as_text())
	inventoryFile.close()

func _on_LineEdit_text_changed(new_text):
	inventory["LineEdit"] = new_text
	saveInventoryToFile()

func _on_LineEdit2_text_changed(new_text):
	inventory["LineEdit2"] = new_text
	saveInventoryToFile()

func _on_LineEdit3_text_changed(new_text):
	inventory["LineEdit3"] = new_text
	saveInventoryToFile()

func _on_LineEdit4_text_changed(new_text):
	inventory["LineEdit4"] = new_text
	saveInventoryToFile()

func _on_LineEdit5_text_changed(new_text):
	inventory["LineEdit5"] = new_text
	saveInventoryToFile()

func _on_LineEdit6_text_changed(new_text):
	inventory["LineEdit6"] = new_text
	saveInventoryToFile()

func _on_LineEdit7_text_changed(new_text):
	inventory["LineEdit7"] = new_text
	saveInventoryToFile()

func _on_LineEdit8_text_changed(new_text):
	inventory["LineEdit8"] = new_text
	saveInventoryToFile()

func _on_LineEdit9_text_changed(new_text):
	inventory["LineEdit9"] = new_text
	saveInventoryToFile()

func _on_LineEdit10_text_changed(new_text):
	inventory["LineEdit10"] = new_text
	saveInventoryToFile()

func _on_LineEdit11_text_changed(new_text):
	inventory["LineEdit11"] = new_text
	saveInventoryToFile()

func _on_LineEdit12_text_changed(new_text):
	inventory["LineEdit12"] = new_text
	saveInventoryToFile()

func _on_LineEdit13_text_changed(new_text):
	inventory["LineEdit13"] = new_text
	saveInventoryToFile()

func _on_LineEdit14_text_changed(new_text):
	inventory["LineEdit14"] = new_text
	saveInventoryToFile()

func _on_LineEdit15_text_changed(new_text):
	inventory["LineEdit15"] = new_text
	saveInventoryToFile()

func _on_LineEdit16_text_changed(new_text):
	inventory["LineEdit16"] = new_text
	saveInventoryToFile()

func _on_LineEdit17_text_changed(new_text):
	inventory["LineEdit17"] = new_text
	saveInventoryToFile()

func _on_LineEdit18_text_changed(new_text):
	inventory["LineEdit18"] = new_text
	saveInventoryToFile()

func FillInventoryValues():
	$VBoxContainer/LineEdit.text = inventory["LineEdit"]
	$VBoxContainer/LineEdit2.text = inventory["LineEdit2"]
	$VBoxContainer/LineEdit3.text = inventory["LineEdit3"]
	$VBoxContainer/LineEdit4.text = inventory["LineEdit4"]
	$VBoxContainer/LineEdit5.text = inventory["LineEdit5"]
	$VBoxContainer/LineEdit6.text = inventory["LineEdit6"]
	$VBoxContainer/LineEdit7.text = inventory["LineEdit7"]
	$VBoxContainer/LineEdit8.text = inventory["LineEdit8"]
	$VBoxContainer/LineEdit9.text = inventory["LineEdit9"]
	$VBoxContainer/LineEdit10.text = inventory["LineEdit10"]
	$VBoxContainer/LineEdit11.text = inventory["LineEdit11"]
	$VBoxContainer/LineEdit12.text = inventory["LineEdit12"]
	$VBoxContainer/LineEdit13.text = inventory["LineEdit13"]
	$VBoxContainer/LineEdit14.text = inventory["LineEdit14"]
	$VBoxContainer/LineEdit15.text = inventory["LineEdit15"]
	$VBoxContainer/LineEdit16.text = inventory["LineEdit16"]
	$VBoxContainer/LineEdit17.text = inventory["LineEdit17"]
	$VBoxContainer/LineEdit18.text = inventory["LineEdit18"]
