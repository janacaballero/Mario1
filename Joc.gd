extends Node2D

var posicio := Vector2(0,0)

func _ready():
	Global.Joc = self

func _on_AreaInterrogant_body_entered(body, posicio):
	print(body.name)
	posicio = print(posicio)
	
