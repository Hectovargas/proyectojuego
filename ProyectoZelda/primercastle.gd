extends Node2D
var cambiar_escena = false
var escena_actual = "primercastle"





func _on_zona_inicial_body_entered(body):
	if body.is_in_group("Jugador"):
		cambiar_escena = true
		change_scenes()

func change_scenes():
	if cambiar_escena == true:
		if escena_actual == "primercastle":
			get_tree().change_scene_to_file("res://escenas/zona Inical.tscn")
