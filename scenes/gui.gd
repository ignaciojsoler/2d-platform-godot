extends CanvasLayer
@onready var score: Label = $Score

func _process(delta: float) -> void:
	score.text = "Score: " + str(GameGamaner.score)
