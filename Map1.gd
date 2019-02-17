extends Sprite
func _ready():
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
		show("res://Blueprint Fl1.png")

	