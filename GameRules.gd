extends Node


const LEVEL_LIMIT =900
@onready var player = $"../Player"

func _process(delta):
	game_over()
	
func game_over():
	if player.position.y > LEVEL_LIMIT:
		end_game()
		
func end_game():
	get_tree().change_scene_to_file("res://Scenes/Levels/game_o_ver.tscn")
