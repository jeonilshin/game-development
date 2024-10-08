extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if body.has_method("die"):
		Engine.time_scale = 0.25
		body.die()
		timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
