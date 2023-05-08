extends KinematicBody2D
var velocitat := 1000
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN *600

func _process(delta):
	moviment.x = 200 
	moviment.y = 0
	
	moviment += gravetat * delta
	moviment = move_and_slide(moviment, Vector2.ZERO)
