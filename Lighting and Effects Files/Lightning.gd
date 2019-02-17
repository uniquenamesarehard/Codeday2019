extends Light2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	energy = 0.01
	pass

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		energy = 5
		var t = Timer.new()
		t.set_wait_time(0.57)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		energy = 0.01

func _on_Area2D_body_entered(body):
	if body.entered():
		energy = 5
	


func _on_Area2D_body_exited(body):
	if body.exited():
		energy = 0.01
