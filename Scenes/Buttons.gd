extends Node2D

var current_color = "Green"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass



func _on_TopLeftColor_pressed():
	current_color = "Blue"

func _on_TopMiddleColor_pressed():
	current_color = "Green"

func _on_TopRightColor_pressed():
	current_color = "Red"

func _on_Orange_pressed():
	current_color = "Orange"

func _on_Purple_pressed():
	current_color = "Purple"

func _on_Yellow_pressed():
	current_color = "Yellow"
	
func _on_DiffBlue_pressed():
	current_color = "DiffBlue"

func _on_DiffRed_pressed():
	current_color = "DiffRed"

func _on_DiffGreen_pressed():
	current_color = "DiffGreen"
	
func move(target):
    var move_tween = get_node("Tween")
    move_tween.interpolate_property(self, "position", position, target, 2, Tween.TRANS_QUINT, Tween.EASE_OUT)
    move_tween.start()