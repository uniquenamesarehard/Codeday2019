extends AnimatedSprite


func _ready():
	connect("animation_finished", self, "on_AnimatedSprite_animation_finished")
	
func  on_AnimatedSprite_animation_finished(): 
	if self.animation == "run":
		animation == "Walk"
	else:
		animation == "run"
		


# class member variables go here, for example:
# var a = 2
# var b = "textvar"



