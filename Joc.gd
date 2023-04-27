extends Node2D
var Escena_EnemicInterrogant := preload("res://EnemicInterrogant.tscn")

func _ready():
	Global.Joc = self

func _on_AreaInterrogant_body_entered(body, posicio):
	print(body.name)
	print (posicio)
	var nou_enemic = Escena_EnemicInterrogant.instance()
	nou_enemic.global_position = posicio
	Global.Enemics.add_child(nou_enemic)
	
