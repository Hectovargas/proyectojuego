extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print($TileMap/Jugador.position.x)
	print($TileMap/Jugador.position.y)
	if ($TileMap/Jugador.position.x >= 1326 && $TileMap/Jugador.position.x <= 1382 && $TileMap/Jugador.position.y <= 742 && $TileMap/Jugador.position.y >= 691 or $TileMap/Jugador.position.x >= 392 && $TileMap/Jugador.position.x <= 458 && $TileMap/Jugador.position.y <= 1508 && $TileMap/Jugador.position.y >= 1470 or $TileMap/Jugador.position.x >= -830 && $TileMap/Jugador.position.x <= -778 && $TileMap/Jugador.position.y <= 750 && $TileMap/Jugador.position.y >= 689):
		$TileMap/Jugador/AvisosLabel.set_text("Presione ENTER para interactuar")
		if Input.is_key_pressed(KEY_ENTER):
			$TileMap/Jugador/NinePatchRect/TextureRect.hide()
			$TileMap/Jugador/NinePatchRect/TextureRect2.show()
			$TileMap/Jugador/NinePatchRect.show()
			$TileMap/Jugador/NinePatchRect/Label.set_text("No puedes pasar hasta que tengas un arma")
	else:
		$TileMap/Jugador/NinePatchRect.hide()
		$TileMap/Jugador/AvisosLabel.set_text("")
