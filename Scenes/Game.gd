extends Node2D

var score = 0.0
var projectile_speed = 5
var emit_time = 2
var game_over = false

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if score >= 0:
		get_node("ScoreNode/Score").text = str(int(score))

func _on_StartButton_pressed():
	get_node("UI/MenuButtons").move(Vector2(-576, 0))
	get_node("UI/DifficultyButtons").move(Vector2(0, 0))

func _on_BackButton_pressed():
	get_node("UI/MenuButtons").move(Vector2(0, 0))
	get_node("UI/DifficultyButtons").move(Vector2(576, 0))

func _on_HardButton_pressed():
	get_node("UI").move(Vector2(0, -400))
	get_node("UI/DifficultyButtons").move(Vector2(576,0))
	get_node("ScoreNode").move(Vector2(0, 150))
	get_node("Buttons").move(Vector2(0, 762))
	get_node("Emitters").begin_hard_game()

func _on_HarderButton_pressed():
	get_node("UI").move(Vector2(0, -400))
	get_node("UI/DifficultyButtons").move(Vector2(576,0))
	get_node("ScoreNode").move(Vector2(0, 150))
	get_node("Buttons").move(Vector2(0, 650))
	get_node("Emitters").begin_harder_game()


func _on_HardestButton_pressed():
	get_node("UI").move(Vector2(0, -400))
	get_node("UI/DifficultyButtons").move(Vector2(576,0))
	get_node("ScoreNode").move(Vector2(0, 150))
	get_node("Buttons").move(Vector2(0, 538))
	get_node("Emitters").begin_hardest_game()


func _on_QuitButton_pressed():
	get_tree().quit()
