extends TextureButton

onready	var global = get_node("/root/Globals")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func ArrowPressed():
	var path = "res://Scenes/" + str(global.current_color) + "Projectile.tscn"
	var projectile = load(str(path)).instance()

	add_child(projectile)
	projectile.position = Vector2(68, 0)
	projectile.y_speed = -int(global.projectile_speed)

