extends Control

var player1score = 0
var player2score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Player1score.text = str(player1score)
	$Player2score.text = str(player2score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ball_score() -> void:
	player2score =+ 1
	$Player2score.text = str(player2score)


func _on_ball_score_2() -> void:
	player1score =+ 1
	$Player1score.text = str(player1score)
