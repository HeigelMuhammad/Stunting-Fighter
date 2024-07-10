extends Node2D
@onready var lanjut = $"next to food/next to food"
@onready var p_benar1 = $Control/benar1
@onready var p_benar2 = $Control/benar2
@onready var p_benar3 = $Control/benar3
@onready var salah1 = $Control/salah1
@onready var salah2 = $Control/salah2

var ayam_pressed = false
var sayur_pressed = false
var nasi_pressed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	lanjut.hide() # Hide the button initially


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_to_food_pressed():
	get_tree().change_scene_to_file("res://12 - 23 bulan/halaman_4.tscn")

func _check_all_pressed():
	if ayam_pressed and nasi_pressed and sayur_pressed:
		lanjut.show()

func _on_ayam_pressed():
	p_benar1.show()
	ayam_pressed = true
	_check_all_pressed()


func _on_sayur_pressed():
	p_benar2.show()
	sayur_pressed = true
	_check_all_pressed()


func _on_nasi_pressed():
	p_benar3.show()
	nasi_pressed = true
	_check_all_pressed()


func _on_daging_kaleng_pressed():
	salah1.show()


func _on_mie_pressed():
	salah2.show()
