extends Node2D
@onready var lanjut = $"next/next"
@onready var p_benar1 = $Control/benar1
@onready var p_benar2 = $Control/benar2
@onready var p_benar3 = $Control/benar3
@onready var p_benar4 = $Control/benar4
@onready var p_benar5 = $Control/benar5
@onready var salah1 = $Control/salah1

var ikan_pressed = false
var wortel_pressed = false
var tempe_pressed = false
var minyakkelapa_pressed = false
var beras_pressed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	lanjut.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_pressed():
	get_tree().change_scene_to_file("res://9 - 11 bulan/bayi9-11.4.tscn")

func _check_all_pressed():
	if ikan_pressed and wortel_pressed and tempe_pressed and minyakkelapa_pressed and beras_pressed:
		lanjut.show()


func _on_ikan_pressed():
	p_benar1.show()
	ikan_pressed = true
	_check_all_pressed()


func _on_wortel_pressed():
	p_benar2.show()
	wortel_pressed = true
	_check_all_pressed()


func _on_tempe_pressed():
	p_benar3.show()
	tempe_pressed = true
	_check_all_pressed()


func _on_minyakkelapa_pressed():
	p_benar4.show()
	minyakkelapa_pressed = true
	_check_all_pressed()


func _on_beras_pressed():
	p_benar5.show()
	beras_pressed = true
	_check_all_pressed()


func _on_mie_pressed():
	salah1.show()
