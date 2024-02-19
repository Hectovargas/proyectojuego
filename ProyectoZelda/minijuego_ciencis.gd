extends Node2D
var pescados = 0
var pescando = false
var dentro = false
var velocity = 0.5
var superior = false
var inferior = true
var fallos = 0
var minNumber := 0.0
var maxNumber := 0.7
var valor = false
var cambio = true
var rng := RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	$Instrucciones/AnimatedSprite2D2.play("secuencia")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(valor == false):
		$Jugador/Sprite2D/ProgressBar.value = 25
		valor = true
	$Jugador/Sprite2D2/Label.set_text(str(pescados))
	print($Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y)
	if $Jugador.position.x > 214 && $Jugador.position.y > 375 && $Jugador.position.x < 380 && $Jugador.position.y < 400:
		if Input.is_key_pressed(KEY_ENTER) && pescando==false:
			pescando=true
			$Jugador/CUERDA.show()
			Global.pescar = true
			$Jugador/CUERDA.play("default")
			await get_tree().create_timer(1).timeout
			$Jugador/CUERDA.stop()
			$Jugador/CUERDA.play("stand")
#Aqui empieza el juego
	if pescando==true:
		var randomNumber := rng.randf() * (maxNumber - minNumber) + minNumber
		
		$Jugador/Sprite2D.show()
		
		if $Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y >=-27 && $Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y<= 10:
			if(superior==true):
				$Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y += velocity
			if(inferior==true):
				$Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y -= velocity
				
			if($Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y <=-26):
				superior = true
				inferior = false
			if $Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y >= 9:
				superior = false
				inferior = true
			if cambio == true:
				cambio = false
				await get_tree().create_timer(1).timeout
				velocity=randomNumber
				cambio = true
		if($Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y > $Jugador/Sprite2D/areaDelJugador.position.y-2.5 && $Jugador/Sprite2D/AreaDeMovimientoAleatorio.position.y < $Jugador/Sprite2D/areaDelJugador.position.y+2.5):
			$Jugador/Sprite2D/ProgressBar.value += 0.85
		else:
			$Jugador/Sprite2D/ProgressBar.value -=0.20
		
		if Input.is_key_pressed(KEY_SPACE):
			if($Jugador/Sprite2D/areaDelJugador.position.y >= -27):
				$Jugador/Sprite2D/areaDelJugador.position.y -= 0.5
			else:
				$Jugador/Sprite2D/areaDelJugador.position.y +=0
		else:
			if($Jugador/Sprite2D/areaDelJugador.position.y <= 11):
				$Jugador/Sprite2D/areaDelJugador.position.y += 0.5
			else:
				$Jugador/Sprite2D/areaDelJugador.position.y +=0
		if $Jugador/Sprite2D/ProgressBar.value == 100:
			Global.pescar = false
			pescados += 1
			pescando=false
			$Jugador/Sprite2D/ProgressBar.value = 0
			$Jugador/CUERDA.hide()
			$Jugador/Sprite2D.hide()
			$Jugador/pseudoanimacionpez.show()
			await get_tree().create_timer(0.2).timeout
			while true:
				var posy = $Jugador/pseudoanimacionpez.position.y
				if(posy > 1):
					await get_tree().create_timer(0.01).timeout
					$Jugador/pseudoanimacionpez.position.y -=1
				else:
					$Jugador/pseudoanimacionpez.position.y = 70
					valor = true
					$Jugador/pseudoanimacionpez.hide()
					break;
		if $Jugador/Sprite2D/ProgressBar.value == 0:
			$Jugador/CUERDA.hide()
			$Jugador/Sprite2D.hide()
			valor=false
			pescando=false
			Global.pescar = false
			fallos += 1

func _on_area_de_salida_body_entered(body):
	if body.is_in_group("Jugador"):
		$AnimatedSprite2D.play("secuenciaPuerta")
		
		$AnimatedSprite2D.play("puerta")
		

func _on_instrucciones_body_entered(body):
	if body.is_in_group("Jugador"):
		DialogueManager.show_dialogue_balloon(load("res://instrucciones ciencia.dialogue"), "start")


func _on_area_de_pesca_body_exited(body):
	if body.is_in_group("Jugador"):
		$Jugador/CUERDA.hide()
		Global.pescar = false


func _on_area_de_movimiento_aleatorio_body_entered(body):
	pass


func _on_area_del_jugador_body_entered(body):
	if body.is_in_group("Jugador"):
		dentro = true


func _on_area_de_movimiento_aleatorio_body_exited(body):
	pass


func _on_area_del_jugador_body_exited(body):
	if body.is_in_group("Jugador"):
		dentro = false
	dentro = false

