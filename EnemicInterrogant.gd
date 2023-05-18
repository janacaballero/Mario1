extends KinematicBody2D
var velocitat := 200
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN *800

func _ready():
	moviment.x = velocitat
	moviment.y = 0
	
func _process(delta):
	moviment += gravetat * delta
	moviment = move_and_slide(moviment, Vector2.UP)

func _on_Area2DDreta_area_entered(area):
	moviment.x = -100

func _on_Area2DDreta_body_entered(body):
	if body.is_in_group("terra"):
		moviment.x = -200

func _on_Area2DEsquerra_body_entered(body):
	if body.is_in_group("terra"):
		moviment.x = 200

func _on_Area2D_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if(body.is_in_group('mario')) and is_on_floor():
		get_tree().reload_current_scene()
