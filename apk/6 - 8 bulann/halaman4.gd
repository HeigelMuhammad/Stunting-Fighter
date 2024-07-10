extends Node2D

@onready var lanjut = $"next to masak/next to masak2"
@onready var p_benar1 = $Control/benar1
@onready var p_benar2 = $Control/benar2
@onready var p_benar3 = $Control/benar3
@onready var salah1 = $Control/salah1
@onready var salah2 = $Control/salah2
@onready var salah3 = $Control/salah3
@onready var salah4 = $Control/salah4

var santan_pressed = false
var wortel_pressed = false
var beras_pressed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	lanjut.hide() # Hide the button initially

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_next_to_masak_2_pressed():
	get_tree().change_scene_to_file("res://6 - 8 bulann/halaman5.tscn")

func _on_santan_pressed():
	p_benar1.show()
	santan_pressed = true
	_check_all_pressed()

func _on_wortel_pressed():
	p_benar2.show()
	wortel_pressed = true
	_check_all_pressed()

func _on_beras_pressed():
	p_benar3.show()
	beras_pressed = true
	_check_all_pressed()

func _check_all_pressed():
	if santan_pressed and wortel_pressed and beras_pressed:
		lanjut.show()


func _on_msg_pressed():
	salah2.show()


func _on_sarden_pressed():
	salah1.show()


func _on_daging_kaleng_pressed():
	salah3.show()


func _on_mie_pressed():
	salah4.show()
