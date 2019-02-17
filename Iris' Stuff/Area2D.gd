extends Area2D
signal respond(text)
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var text = ["What child? Take a look around, there is no one here but you and I.", "Oh, I get it. You want to play a little hero fantasy. Are you sure that’s not simply what you wanted to see?", "Yo"]
var trigger

func _ready():
	trigger = false
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if(trigger == true):
		if Input.is_action_pressed("ui_select"):
			emit_signal("respond", text)
		
		
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_Area2D_body_entered(body):
	trigger = true

func _on_Area2D_body_exited(body):
	trigger = false
