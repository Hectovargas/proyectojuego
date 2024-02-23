extends Area2D
var velocity = Vector2(0,-1)
var speed = 300

func _ready():
	add_to_group("Arrow")

func _physics_process(delta):
	
	position = velocity.normalized()*delta*speed 

func _on_body_entered(body):
	if(body.is_in_group("Enemy")):
		body.Health=0
		queue_free()
	if(body.is_in_group("Boss")):
		body.Health-=5
		body.Hurt()
		queue_free()
	queue_free()
	if body.is_in_group("Jugador"):
		Global.disparo = true
	
