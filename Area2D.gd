extends Area2D
signal lightning
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	connect("lightning", self, "_yeet")
	var oN = get_node("Lightning")
	#oN.connect("lightning", oN, "_yeet")
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _On_Body_Entered(signal):
	self.yeet()
	emit_signal("lightning")
	
func _yeet():
	pass