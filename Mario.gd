extends KinematicBody2D
var velocitat := 1000
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN *600
var direccio := Vector2.ZERO
var salt := 450

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("saltar") and is_on_floor():
		moviment.y = -salt
	elif Input.is_action_pressed("endavant"):
		moviment.x = 300
	elif Input.is_action_pressed("endarrere"):
		moviment.x = -300
	else:
		moviment.x = 0
#	move_and_slide(direccio.normalized() * velocitat)
	moviment += gravetat * delta
	
	moviment = move_and_slide(moviment, Vector2.UP)
	