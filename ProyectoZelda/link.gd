extends CharacterBody2D
var Speed = 140
var LastDirection = Vector2.ZERO
var AnimatedSprite

func _ready():
	AnimatedSprite = $AnimatedSprite2D
	add_to_group("Jugador")

func _physics_process(delta):
	move_and_slide()

func _process(delta):
	var Direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = Direction * Speed
	
	
	if Direction != Vector2.ZERO:
		LastDirection=Direction
	
	if Direction.x!=0:
		AnimatedSprite.play("WalkRight")
		
	elif Direction.y <0:
		AnimatedSprite.play("WalkUp")
	elif Direction.y >0:
		AnimatedSprite.play("WalkDown")
	else:
		if LastDirection.x !=0:
			AnimatedSprite.play("Idle_Right")
		elif LastDirection.y <0:
			AnimatedSprite.play("Idle_up")
		elif LastDirection.y >0:
			AnimatedSprite.play("Idle_Down")
	AnimatedSprite.flip_h = LastDirection.x >0
	

