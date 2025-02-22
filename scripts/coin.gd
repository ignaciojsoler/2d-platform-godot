extends Area2D
@onready var coin_sound: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	GameGamaner.sum_score(1)
	var sound = coin_sound.duplicate()
	get_parent().add_child(sound)
	sound.play()
	queue_free()
