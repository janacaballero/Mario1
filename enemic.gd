extends KinematicBody2D
var velocitat := 1000
var moviment := Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment.x = 200 
	

	moviment = move_and_slide(moviment, Vector2.ZERO)
