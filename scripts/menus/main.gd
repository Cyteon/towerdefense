extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Version.text = "Version: " + ProjectSettings.get_setting("application/config/version")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/start.tscn")


func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/credits.tscn")


func _on_exit_button_pressed() -> void:
	get_tree().quit()
