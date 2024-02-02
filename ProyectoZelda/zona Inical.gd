extends Node2D
var animated_sprite = AnimatedSprite2D.new()
var ruleteado = false;
var dialog = false
var texto = "Aparentemente he caido en una trampa"
var i = 0
var j = 0
var textos=""
var empezar = false
var ciencia = false
var arte = false
var historia = false
var politica = false
var segundos = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $MapaInicial/Jugador.position.x >= 693 && $MapaInicial/Jugador.position.x <= 714 && $MapaInicial/Jugador.position.y <= 1300 && $MapaInicial/Jugador.position.y >=1272:
		print("ya estoy")
		$MapaInicial/Jugador.position = Vector2(4248,203)
	if $MapaInicial/Jugador.position.y >= 289 && $MapaInicial/Jugador.position.y <= 310 && $MapaInicial/Jugador.position.x <= 4215 && $MapaInicial/Jugador.position.x >=4186:
		print("ya estoy")
		$MapaInicial/Jugador.position = Vector2(693,1300)
	if $MapaInicial/Jugador.position.y >= 182 && $MapaInicial/Jugador.position.y <= 211 && $MapaInicial/Jugador.position.x <= 4106 && $MapaInicial/Jugador.position.x >=3976:
		segundos+=1
		$MapaInicial/Sprite2D.show()
		$MapaInicial/Jugador.position = Vector2(4050,195)
		if segundos>=75:
			$MapaInicial/Jugador.position = Vector2(4493,1106)
			
	if $MapaInicial/Jugador.position.x>=-1000 && $MapaInicial/Jugador.position.x<=3000:
		if ($MapaInicial/Jugador.position.x >= 1326 && $MapaInicial/Jugador.position.x <= 1382 && $MapaInicial/Jugador.position.y <= 742 && $MapaInicial/Jugador.position.y >= 691 or $MapaInicial/Jugador.position.x >= 392 && $MapaInicial/Jugador.position.x <= 458 && $MapaInicial/Jugador.position.y <= 1508 && $MapaInicial/Jugador.position.y >= 1470 or $MapaInicial/Jugador.position.x >= -830 && $MapaInicial/Jugador.position.x <= -778 && $MapaInicial/Jugador.position.y <= 750 && $MapaInicial/Jugador.position.y >= 689):
			$MapaInicial/Jugador/AvisosLabel.set_text("Presione ENTER para interactuar")
			if Input.is_key_pressed(KEY_ENTER):
				$MapaInicial/Jugador/NinePatchRect/TextureRect.hide()
				$MapaInicial/Jugador/NinePatchRect/TextureRect2.show()
				$MapaInicial/Jugador/NinePatchRect.show()
				$MapaInicial/Jugador/NinePatchRect/Label.set_text("No puedes pasar hasta que tengas un arma")
		else:
			$MapaInicial/Jugador/NinePatchRect/Label.set_text("")
			$MapaInicial/Jugador/NinePatchRect.hide()
			$MapaInicial/Jugador/AvisosLabel.set_text("")
	else:
		if $MapaInicial/Jugador.position.x >= 4453 && $MapaInicial/Jugador.position.x <= 4538 && $MapaInicial/Jugador.position.y <= 1130 && $MapaInicial/Jugador.position.y >= 1058 && dialog == false:
			
			if i<36:
				$MapaInicial/Jugador/NinePatchRect/TextureRect2.hide()
				$MapaInicial/Jugador/NinePatchRect/TextureRect.show()
				$MapaInicial/Jugador/NinePatchRect.show()
				textos = $MapaInicial/Jugador/NinePatchRect/Label.text+(texto[i])
				$MapaInicial/Jugador/NinePatchRect/Label.set_text(textos)
				i+=1
			else:
					var dialog = true
		else:
			$MapaInicial/Jugador/NinePatchRect.hide()
		var numeroaleatorio
		if $MapaInicial/Jugador.position.x >= 4467 && $MapaInicial/Jugador.position.x <= 4530 && $MapaInicial/Jugador.position.y <= 950 && $MapaInicial/Jugador.position.y >= 917:
			if(ruleteado == false):
				$MapaInicial/Jugador/AvisosLabel.set_text("Presione ENTER para interactuar")
			if Input.is_key_pressed(KEY_ENTER):
				if(ruleteado == false):
					$MapaInicial/TileMap/AnimatedSprite2D.play("default")
					ruleteado = true;
				else:
					$MapaInicial/Jugador/AvisosLabel.set_text("Ya le diste a la ruleta")
		else:
			$MapaInicial/Jugador/AvisosLabel.set_text("")
		if $MapaInicial/TileMap/AnimatedSprite2D.is_playing():
			var current_frame = $MapaInicial/TileMap/AnimatedSprite2D.get_frame()
			var random = RandomNumberGenerator.new()
			numeroaleatorio = random.randi_range(0, 400000)
			
			if numeroaleatorio>=0 && numeroaleatorio<=4000  && current_frame == 0 && ciencia==false :
				ciencia = true
				$MapaInicial/TileMap/AnimatedSprite2D.pause()
				$MapaInicial/Jugador/Camera2D/TextureRect/Label.set_text("El resultado es: CIENCIA")
				$MapaInicial/Jugador/Camera2D/TextureRect.show()
				$MapaInicial/TileMap/Sprite2D.show()
				$MapaInicial/TileMap/StaticBody2D5.position = Vector2(0,0)
				empezar=true
				
			if(numeroaleatorio>=4001 && numeroaleatorio<=8000 && current_frame == 2 && arte == false):
				arte = true
				$MapaInicial/TileMap/AnimatedSprite2D.pause()
				$MapaInicial/Jugador/Camera2D/TextureRect/Label.set_text("El resultado es: ARTE")
				$MapaInicial/Jugador/Camera2D/TextureRect.show()
				$MapaInicial/TileMap/Sprite2D2.show()
				$MapaInicial/TileMap/StaticBody2D6.position = Vector2(0,0)
				empezar=true

			if(numeroaleatorio>=80001 && numeroaleatorio<=12000 && current_frame == 4 && historia == false):
				historia=true
				$MapaInicial/TileMap/AnimatedSprite2D.pause()
				$MapaInicial/Jugador/Camera2D/TextureRect/Label.set_text("El resultado es: HISTORIA")
				$MapaInicial/Jugador/Camera2D/TextureRect.show()
				$MapaInicial/TileMap/Sprite2D3.show()
				$MapaInicial/TileMap/StaticBody2D7.position = Vector2(0,0)
				empezar=true
				
			if(numeroaleatorio>=12001 && numeroaleatorio<=16000 && current_frame == 6 && politica == false):
				politica=true
				$MapaInicial/TileMap/AnimatedSprite2D.pause()
				$MapaInicial/Jugador/Camera2D/TextureRect/Label.set_text("El resultado es: POLITICA")
				$MapaInicial/Jugador/Camera2D/TextureRect.show()
				$MapaInicial/TileMap/Sprite2D4.show()
				$MapaInicial/TileMap/StaticBody2D8.position = Vector2(0,0)
				empezar=true
		if j<251:
			if empezar == true:
				j+=1
				print (j)
				if j > 250:
					$MapaInicial/Jugador/Camera2D/TextureRect.hide()
					empezar == false
					
