extends Node2D
var animated_sprite = AnimatedSprite2D.new()
var ruleteado = false;
func _ready():
	pass
func _process(delta):
	var numeroaleatorio
	if $TileMap/Jugador.position.x >= 450 && $TileMap/Jugador.position.x <= 550 && $TileMap/Jugador.position.y <= 450 && $TileMap/Jugador.position.y >= 350:
		if(ruleteado == false):
			$TileMap/Label.set_text("Presione ENTER para interactuar")
		if Input.is_key_pressed(KEY_ENTER):
			if(ruleteado == false):
				$TileMap/AnimatedSprite2D.play("default")
				ruleteado = true;
			else:
				$TileMap/Label.set_text("Ya le diste a la ruleta")
	else:
		$TileMap/Label.set_text("")
	if $TileMap/AnimatedSprite2D.is_playing():
		var current_frame = $TileMap/AnimatedSprite2D.get_frame()
		var random = RandomNumberGenerator.new()
		numeroaleatorio = random.randi_range(0, 400000)
		print(current_frame)
		print(numeroaleatorio)
		if(numeroaleatorio<=100 && numeroaleatorio<=1000  && current_frame == 0):
			$TileMap/AnimatedSprite2D.pause()
		if(numeroaleatorio<=1001 && numeroaleatorio<=2000 && current_frame == 2):
			$TileMap/AnimatedSprite2D.pause()
		if(numeroaleatorio<=2001 && numeroaleatorio<=3000 && current_frame == 4):
			$TileMap/AnimatedSprite2D.pause()
		if(numeroaleatorio<=3001 && numeroaleatorio<=4000 && current_frame == 6):
			$TileMap/AnimatedSprite2D.pause()
