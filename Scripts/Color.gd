extends TextureButton

onready var global = get_node("/root/Globals")

export (String) var color

func _ready():
	pass # Replace with function body.

func ChangeColor():
	global.current_color = color
