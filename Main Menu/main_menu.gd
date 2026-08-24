extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%music_slider.value = GlobalVars.music_volume
	%effects_slider.value = GlobalVars.sound_effect_volume


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_options_button_pressed() -> void:
	%MainMenuContainer.visible = false
	%OptionsContainer.visible = true


func _on_options_back_buton_pressed() -> void:
	%MainMenuContainer.visible = true
	%OptionsContainer.visible = false
	
func _on_credits_back_button_pressed() -> void:
	%CreditsContainer.visible = false
	%MainMenuContainer.visible = true

func _on_credits_button_pressed() -> void:
	%CreditsContainer.visible = true
	%MainMenuContainer.visible = false


func _on_music_slider_value_changed(value: float) -> void:
	GlobalVars.music_volume = value


func _on_effects_slider_value_changed(value: float) -> void:
	GlobalVars.sound_effect_volume = value


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Game Scene/Game.tscn")
