extends Node

@onready var jugador = $Jugador
@onready var shooter_politica_ = $"Shooter(Politica)"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_2d_body_entered(body):
	if body.is_in_group("Jugador"):
		get_tree().change_scene_to_file("res://mazmorra con ruleta.tscn")
