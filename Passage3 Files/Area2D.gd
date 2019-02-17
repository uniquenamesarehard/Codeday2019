extends Area2D
signal L

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
	
func _ready():
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Area2D_body_entered(body):
	hide()
	emit_signal("L")
	#$CollisionShape2D.disable = true
