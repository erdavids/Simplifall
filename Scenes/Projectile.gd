extends Node2D

var y_speed = 0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	position.y += y_speed

func _on_Area2D_area_entered(area):
	if get_node("Area2D").areaType == area.areaType:
		var parent_node = get_tree().get_root().get_node("Game")
		var score_node = parent_node.get_node("ScoreNode/Score")
		
		parent_node.score += .5
		if parent_node.score >= 0:
			score_node.text = str(int(parent_node.score))
		
		if parent_node.emit_time > .5:
			parent_node.emit_time -= .005
		
		queue_free()
	if area.areaType == "Barrier" and y_speed > 0:
		var parent_node = get_tree().get_root().get_node("Game")
		var score_node = parent_node.get_node("ScoreNode/Score")
		
		parent_node.score -= 10
		if parent_node.score < 0:
			print(parent_node.score)
			parent_node.game_over = true
			score_node.text = "END"
