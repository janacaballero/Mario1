extends Node2D
var Escena_EnemicInterrogant := preload("res://EnemicInterrogant.tscn")

func _ready():
	Global.Joc = self
	for posicio in $TileMap.get_used_cells_by_id(7):
		crea_interrogant($TileMap.map_to_world(posicio))

func _on_AreaInterrogant_body_entered(body, posicio):
	print(body.name)
	print (posicio)
	var nou_enemic = Escena_EnemicInterrogant.instance()
	nou_enemic.global_position = posicio
	Global.Enemics.call_deferred("add_child", nou_enemic)

func crea_interrogant(posicio):
	print("Creant a %s" % var2str(posicio))
	var escena_interrogant = preload("res://AreaInterrogant.tscn")
	var nou_interrogant = escena_interrogant.instance()
	position = posicio
	$TileMap.add_child(nou_interrogant)
