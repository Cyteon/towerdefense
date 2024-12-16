extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	var label = RichTextLabel.new()
	label.size_flags_vertical = Control.SIZE_EXPAND_FILL
	label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	label.add_theme_font_size_override("normal_font_size", 32)
	
	label.text = "
	This project is licensed under the GNU AGPL v3
	Scroll past the AGPL license to see the Godot Copyright Information
	Developer: Cyteon
	
	GNU AGPL v3:
	
	"
	
	var file = FileAccess.open("res://LICENSE", FileAccess.READ)
	var content = file.get_as_text()
	
	label.text += content
	
	file = FileAccess.open("res://GODOT_COPYRIGHT.txt", FileAccess.READ)
	content = file.get_as_text()
	
	label.text += "\n\n" + content
	
	$ScrollContainer.add_child(label)


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/main.tscn")
