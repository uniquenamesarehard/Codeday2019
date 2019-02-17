extends Area2D
signal lightning

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	pass
	# Called when the node is added to the scene for the first time.
	# Initialization here


func _on_Area2D_body_entered(body):
	hide()
	emit_signal("lightning")
	$CollisionShape2D.disable = true
