extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_MiddleArrow_pressed():
	var projectile = preload("res://Scenes/Projectile.tscn").instance()
	
	if get_parent().get_parent().current_color == "Blue":
		projectile = preload("res://Scenes/BlueProjectile.tscn").instance()
	if get_parent().get_parent().current_color == "Green":
		projectile = preload("res://Scenes/GreenProjectile.tscn").instance()
	if get_parent().get_parent().current_color == "Red":
		projectile = preload("res://Scenes/RedProjectile.tscn").instance()
	if get_parent().get_parent().current_color == "Orange":
		projectile = preload("res://Scenes/OrangeProjectile.tscn").instance()
	if get_parent().get_parent().current_color == "Purple":
		projectile = preload("res://Scenes/PurpleProjectile.tscn").instance()
	if get_parent().get_parent().current_color == "Yellow":
		projectile = preload("res://Scenes/YellowProjectile.tscn").instance()
	if get_parent().get_parent().current_color == "DiffBlue":
		projectile = preload("res://Scenes/DiffBlueProjectile.tscn").instance()
	if get_parent().get_parent().current_color == "DiffGreen":
		projectile = preload("res://Scenes/DiffGreenProjectile.tscn").instance()
	if get_parent().get_parent().current_color == "DiffRed":
		projectile = preload("res://Scenes/DiffRedProjectile.tscn").instance()
		
	add_child(projectile)
	projectile.position = Vector2(68, 0)
	projectile.y_speed = -int(get_tree().get_root().get_node("Game").projectile_speed)