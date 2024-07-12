extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/bissmillah_start.tscn")
	pass # Replace with function body.


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://6 - 8 bulann/halaman1.tscn")
	pass # Replace with function body.
