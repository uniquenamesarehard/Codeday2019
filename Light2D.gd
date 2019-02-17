extends Light2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var f = 0
func _ready():
	energy = 0.01
func  _input(event):
	if event is InputEventKey:
    	if event.pressed and event.scancode == KEY_F:
        	f = f + 2
func _process(delta):
	if (f > 1):
		energy = 1
		if (f > 3):
			f = 0
	else:
		energy = 0.01