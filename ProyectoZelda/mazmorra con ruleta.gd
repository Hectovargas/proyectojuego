extends Node2D
var animated_sprite = AnimatedSprite2D.new()
var ruleteado = false;
var dialog = false
var texto = "Aparentemente he caido en una trampa"
var i = 0
var j = 0
var textos=""
var empezar = false
func _ready():
	pass
func _process(delta):
	if $TileMap/Jugador.position.x >= 450 && $TileMap/Jugador.position.x <= 550 && $TileMap/Jugador.position.y <= 650 && $TileMap/Jugador.position.y >= 550 && dialog == false:
		if i<36:
			$TileMap/Jugador/NinePatchRect.show()
			textos = $TileMap/Jugador/NinePatchRect/Label.text+(texto[i])
			$TileMap/Jugador/NinePatchRect/Label.set_text(textos)
			
		else:
			var dialog = true
			if Input.is_key_pressed(KEY_ENTER):
				$TileMap/Jugador/NinePatchRect.hide()
		i+=1
	else:
		$TileMap/Jugador/NinePatchRect.hide()
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
		
		if(numeroaleatorio>=0 && numeroaleatorio<=4000  && current_frame == 0):
			$TileMap/AnimatedSprite2D.pause()
			$TileMap/Jugador/Camera2D/TextureRect/Label.set_text("El resultado es: CIENCIA")
			$TileMap/Jugador/Camera2D/TextureRect.show()
			$Sprite2D.show()
			$StaticBody2D2.position = Vector2(0,0)
			empezar=true
			
		if(numeroaleatorio>=4001 && numeroaleatorio<=8000 && current_frame == 2):
			$TileMap/AnimatedSprite2D.pause()
			$TileMap/Jugador/Camera2D/TextureRect/Label.set_text("El resultado es: ARTE")
			$TileMap/Jugador/Camera2D/TextureRect.show()
			$Sprite2D2.show()
			$StaticBody2D3.position = Vector2(0,0)
			empezar=true

		if(numeroaleatorio>=80001 && numeroaleatorio<=12000 && current_frame == 4):
			$TileMap/AnimatedSprite2D.pause()
			$TileMap/Jugador/Camera2D/TextureRect/Label.set_text("El resultado es: HISTORIA")
			$TileMap/Jugador/Camera2D/TextureRect.show()
			$Sprite2D3.show()
			$StaticBody2D4.position = Vector2(0,0)
			empezar=true
			
		if(numeroaleatorio>=12001 && numeroaleatorio<=16000 && current_frame == 6):
			$TileMap/AnimatedSprite2D.pause()
			
			$TileMap/Jugador/Camera2D/TextureRect/Label.set_text("El resultado es: POLITICA")
			$TileMap/Jugador/Camera2D/TextureRect.show()
			$Sprite2D4.show()
			$StaticBody2D5.position = Vector2(0,0)
			empezar=true
	if j<251:
		if empezar == true:
			j+=1
			print (j)
			if j > 250:
				$TileMap/Jugador/Camera2D/TextureRect.hide()
				empezar == false
