extends KinematicBody2D
var velocitat := 1000
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN *600
var direccio := Vector2.ZERO
var salt := 320

func _process(delta):
	if Input.is_action_pressed("saltar") and is_on_floor():
		moviment.y = -salt
	elif Input.is_action_pressed("endavant"):
		$Sprite.play("Camina")
		moviment.x = 300
	elif Input.is_action_pressed("endarrere"):
		moviment.x = -300
	else:
		moviment.x = 0

	moviment += gravetat * delta
	
	moviment = move_and_slide(moviment, Vector2.UP)

func _on_CastellFinal_body_entered(body):
	print ('fi')
