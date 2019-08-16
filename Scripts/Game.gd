extends Node2D

onready var global = get_node("/root/Globals")

func _ready():
	pass

func _on_StartButton_pressed():
	get_node("UI/MenuButtons").move(Vector2(-576, 0))
	get_node("UI/DifficultyButtons").move(Vector2(0, 0))

func _on_BackButton_pressed():
	get_node("UI/MenuButtons").move(Vector2(0, 0))
	get_node("UI/DifficultyButtons").move(Vector2(576, 0))
	
func _on_HardButton_pressed():
	MoveStuff(0, -400, 576, 0, 0, 150, 0, 762, 0, 0, "Hard", 3, false)

func _on_HarderButton_pressed():
	MoveStuff(0, -400, 576, 0, 0, 150, 0, 650, 0, 0, "Harder", 6, false)

func _on_HardestButton_pressed():
	MoveStuff(0, -400, 576, 0, 0, 150, 0, 538, 0, 0, "Hardest", 9, false)
	
func _on_BackButtonDifficulty_pressed():
	get_node("UI/MenuButtons").move(Vector2(-576, 0))
	get_node("ScoreNode/EndOptions").move(Vector2(576, -40))
	MoveStuff(0, 100, 0, 0, 0, -400, 0, 1024, 576, 0, "Hard", 3, true)
	global.score = 0
	
func MoveStuff(ui_x, ui_y, db_x, db_y, score_x, score_y, buttons_x, buttons_y, em_x, em_y, mode, limit, over):
	get_node("UI").move(Vector2(ui_x, ui_y))
	get_node("UI/DifficultyButtons").move(Vector2(db_x, db_y))
	get_node("ScoreNode").move(Vector2(score_x, score_y))
	get_node("Buttons").move(Vector2(buttons_x, buttons_y))
	get_node("Emitters").begin_game()
	get_node("Emitters").move(Vector2(em_x, em_y))
	get_node("ScoreNode/HighScore").text = "High Score: " + str(global.get_high_score("HighScores", mode))
	
	global.current_mode = mode
	global.projectile_limit = limit
	
	global.game_over = over


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_RestartButton_pressed():
	get_node("Emitters").begin_game()
	get_node("ScoreNode/EndOptions").move(Vector2(576, -40))
	
	global.score = 0
	global.game_over = false

func end_options():
	get_node("ScoreNode/EndOptions").move(Vector2(0, -40))
	get_node("Emitters").move(Vector2(576, 0))

