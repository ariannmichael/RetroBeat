extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Chrisp/main_sceane_game.tscn")
	
func _on_quit_pressed():
	get_tree().quit()
	



func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Chrisp/IM Saaeb/IM Saaeb Menus/settings.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Chrisp/IM Saaeb/IM Saaeb Menus/credits.tscn")
