extends Node

@onready var jugador = $Jugador
@onready var shooter_politica_ = $"Shooter(Politica)"
var contador: int= 0
@onready var stalfos_a = $StalfosA
@onready var stalfos_b = $StalfosB
@onready var stalfos_c = $StalfosC
@onready var stalfos_d = $StalfosD
var contadorp = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.vida == 0:
		await get_tree().create_timer(1.5).timeout
		Global.vida=Global.maxvida
		get_tree().change_scene_to_file("res://mazmorra con ruleta.tscn")
	if contador == 0:
		DialogueManager.show_dialogue_balloon(load("res://InicioShooter.dialogue"))
	contador +=1


func _on_area_2d_body_entered(body):
	if body.is_in_group("Jugador"):
		get_tree().change_scene_to_file("res://mazmorra con ruleta.tscn")


func _on_area_2d_2_body_entered(body):
	if body.is_in_group("Jugador"):
		contadorp=1
		if contadorp == 1:
			DialogueManager.show_dialogue_balloon(load("res://shooter2.dialogue"))
			contadorp+=1
		elif contadorp == 2:
			DialogueManager.show_dialogue_balloon(load("res://shooter3.dialogue"))
			contadorp+=1
		elif contadorp == 3:
			DialogueManager.show_dialogue_balloon(load("res://shooter4.dialogue"))
			contadorp+=1
		elif contadorp == 4:
			DialogueManager.show_dialogue_balloon(load("res://shooter5.dialogue"))


func _on_pregunta_1_body_entered(body):
	if body.is_in_group("Jugador"):
		DialogueManager.show_dialogue_balloon(load("res://shooter1.dialogue"))
