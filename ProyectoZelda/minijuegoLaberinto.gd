extends Node2D
var vida

# Called when the node enters the scene tree for the first time.
func _ready():
	vida = Global.vida


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_boton_de_preguntas_body_entered(body):
	if body.is_in_group("Jugador"):
		$TileMap/botonDePreguntas/pressed.show()
		$TileMap/botonDePreguntas/unpressed.hide()
		DialogueManager.show_dialogue_balloon(load("res://pregunta 1 laberinto.dialogue"), "start")

func _on_boton_de_preguntas_body_exited(body):
	if body.is_in_group("Jugador"):
		$TileMap/botonDePreguntas/unpressed.show()
		$TileMap/botonDePreguntas/pressed.hide()

func _on_boton_de_preguntas_2_body_entered(body):
	if body.is_in_group("Jugador"):
		$TileMap/botonDePreguntas2/pressed.show()
		$TileMap/botonDePreguntas2/unpressed.hide()
		DialogueManager.show_dialogue_balloon(load("res://pregunta 1 laberinto.dialogue"), "start2")

func _on_boton_de_preguntas_2_body_exited(body):
	if body.is_in_group("Jugador"):
		$TileMap/botonDePreguntas2/unpressed.show()
		$TileMap/botonDePreguntas2/pressed.hide()



func _on_area_2d_body_entered(body):
	if body.is_in_group("Jugador"):
		DialogueManager.show_dialogue_balloon(load("res://instrucciones laberinto.dialogue"), "start")


func _on_cartel_3_body_entered(body):
	if body.is_in_group("Jugador"):
		DialogueManager.show_dialogue_balloon(load("res://resp 3.dialogue"), "start")


func _on_cartel_2_body_entered(body):
	if body.is_in_group("Jugador"):
		DialogueManager.show_dialogue_balloon(load("res://resp 2.dialogue"), "start")


func _on_cartel_1_body_entered(body):
	if body.is_in_group("Jugador"):
		DialogueManager.show_dialogue_balloon(load("res://resp preg 1.dialogue"), "start")


func _on_cartel_4_body_entered(body):
	if body.is_in_group("Jugador"):
		DialogueManager.show_dialogue_balloon(load("res://resp 4.dialogue"), "start")


func _on_cartel_4_body_exited(body):
	pass # Replace with function body.


func _on_cartel_3_body_exited(body):
	pass # Replace with function body.


func _on_cartel_2_body_exited(body):
	pass # Replace with function body.


func _on_cartel_1_body_exited(body):
	pass # Replace with function body.


func _on_area_2d_2_body_entered(body):
	if body.is_in_group("Jugador"):
		Global.vida = 0
		$TileMap/ColorRect2.hide()
		await get_tree().create_timer(0.25).timeout
		Global.vida=vida
		get_tree().change_scene_to_file("res://mazmorra con ruleta.tscn")


func _on_area_2d_3_body_entered(body):
	if body.is_in_group("Jugador"):
		Global.vida = 0
		$TileMap/ColorRect3.hide()
		await get_tree().create_timer(0.25).timeout
		Global.vida=vida
		get_tree().change_scene_to_file("res://mazmorra con ruleta.tscn")


func _on_area_2d_4_body_entered(body):
	if body.is_in_group("Jugador"):
		Global.vida = 0
		$TileMap/ColorRect4.hide()
		await get_tree().create_timer(0.25).timeout
		Global.vida=vida
		get_tree().change_scene_to_file("res://mazmorra con ruleta.tscn")



func _on_area_2d_5_body_entered(body):
	pass # Replace with function body.
