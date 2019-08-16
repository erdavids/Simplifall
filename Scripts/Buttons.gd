extends Node2D

onready var global = get_node("/root/Globals")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	
func move(target):
    var move_tween = get_node("Tween")
    move_tween.interpolate_property(self, "position", position, target, 2, Tween.TRANS_QUINT, Tween.EASE_OUT)
    move_tween.start()