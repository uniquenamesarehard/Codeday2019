extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$Lightning.hide()
	pass
	# Called when the node is added to the scene for the first time.
	# Initialization here
	#$Man.start($StartPosition.position)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#func new_game():
func lightning():
	$Lightning.show()