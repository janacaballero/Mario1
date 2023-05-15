extends Node2D
var Escena_EnemicInterrogant := preload("res://EnemicInterrogant.tscn")

func _ready():
	Global.Joc = self

func _on_AreaInterrogant_body_entered(body, posicio):
	print(body.name)
	print (posicio)
	var nou_enemic = Escena_EnemicInterrogant.instance()
	nou_enemic.global_position = posicio
	Global.Enemics.call_deferred("add_child", nou_enemic)

func _on_Timer_timeout():
	pass # Replace with function body
