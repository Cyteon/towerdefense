extends Control

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/main.tscn")


func _on_plains_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/maps/plains.tscn")
