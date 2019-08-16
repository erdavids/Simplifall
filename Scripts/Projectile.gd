extends Node2D

var y_speed = 0

onready var global = get_node("/root/Globals")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	position.y += y_speed
	
	if position.y > 1024 || position.y < -1500 || global.game_over:
		print(position)
		print("Deleted")
		queue_free()

func _on_Area2D_area_entered(area):
	if get_node("Area2D").areaType == area.areaType:
		global.change_score(.5)
		queue_free()
	if area.areaType == "Barrier" and y_speed > 0:
		global.change_score(-10)

