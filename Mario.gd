extends KinematicBody2D
var velocitat := 1000
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN *650
var direccio := Vector2.ZERO
var salt := 350

func _process(delta):
	if Input.is_action_pressed("saltar") and is_on_floor():
		moviment.y = -salt
	elif Input.is_action_pressed("endavant"):
		$Sprite.play("Camina")
		moviment.x = 300
		get_node("Sprite").flip_h = false
	elif Input.is_action_pressed("endarrere"):
		moviment.x = -300
		$Sprite.play("Camina")
		get_node("Sprite").flip_h = true
	else:
		moviment.x = 0
		$Sprite.play("parat")
		

	moviment += gravetat * delta
	
	moviment = move_and_slide(moviment, Vector2.UP)

func _on_CastellFinal_body_entered(body):
	pass
