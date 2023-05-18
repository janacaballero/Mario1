extends Area2D

func _ready():
	connect("body_entered", get_tree().root.get_node("Joc"), "_on_AreaInterrogant_body_entered", [global_position])

func _on_Area2D_body_entered(body):
	queue_free()
