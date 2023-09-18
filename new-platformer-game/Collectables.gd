extends Node2D

var Cherry = preload("res://Collectables/Cherry.tscn")


func _on_timer_timeout():
	var cherryTemp = Cherry.instantiate()
	var rng = RandomNumberGenerator.new()
	var randint = rng.randi_range(20, 1000)
	cherryTemp.position = Vector2(randint, 480)
	get_node("Node2D").add_child(cherryTemp)
