extends Sprite


func _ready():
	position = Vector2(get_viewport().size.x/2, get_viewport().size.y/2)
	scale = Vector2(0.3,0.3)
	
	rotate(deg2rad(90))
	
	set_process(true)
	
func _process(delta):
	rotation = self.rotation + deg2rad(90*delta)
	
	translate(Vector2(-1000*delta,0))
