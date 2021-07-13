extends Control


func _ready():
	for button in $"menu/main/Buttons".get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load]) 


func _on_Button_pressed(scene_to_load):
	print("Changing Scene...")
	print(scene_to_load)
# warning-ignore:return_value_discarded
	get_tree().change_scene(scene_to_load)
