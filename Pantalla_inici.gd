extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Input.is_action_pressed("espai"):
		Global.comenca = 1

#func _process(delta):
#	if Input.is_action_pressed("espai"):
#		Global.comenca =1
		
