extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Level = "+name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_exited(body):
	get_tree().reload_current_scene()
