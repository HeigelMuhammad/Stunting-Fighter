extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_selesai_pressed():
	get_tree().change_scene_to_file("res://9 - 11 bulan/bayi9-11.0.tscn")
	pass # Replace with function body.


func _on_keluar_pressed():
	get_tree().change_scene_to_file("res://scene/bissmillah_start.tscn")
	pass # Replace with function body.
