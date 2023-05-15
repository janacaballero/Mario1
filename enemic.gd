extends KinematicBody2D
var velocitat := 200
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN *1000

func _ready():
	moviment.x = velocitat
	moviment.y = 0
	
func _process(delta):
	moviment += gravetat * delta
	print(moviment)
	moviment = move_and_slide(moviment, Vector2.UP)

