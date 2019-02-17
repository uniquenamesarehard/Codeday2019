extends KinematicBody2D


# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const DIRECTION_RIGHT = 1
const DIRECTION_LEFT = -1
var direction = Vector2(DIRECTION_RIGHT, 1)

func set_direction(hor_direction):
    if hor_direction == 0:
        hor_direction = DIRECTION_RIGHT # default to right if param is 0
    var hor_dir_mod = hor_direction / abs(hor_direction) # get unit direction
    apply_scale(Vector2(hor_dir_mod * direction.x, 1)) # flip
    direction = Vector2(hor_dir_mod, direction.y) # update direction
	

"""func _process(delta):
  move_local_x(speed*delta)
  print (delta)
  print (horizontalMovement) 
  if(self.position.x > 1  && self.position.y <= get_viewport_rect().size.x):
  	move_local_x(horizontalMovement*delta*10)
	
  else:
    if(self.position.x < 1): 
      move_local_x(10) #Bounce off top
      horizontalMovement = 0
    if(self.position.x > get_viewport_rect().size.x): 
	  
      move_local_x(-10) #Bounce off bottom
      horizontalMovement = 0
	
	
func _input(event):
  print ("Test")
  if(event.is_action("Player_right")):
    if(horizontalMovement >= -MAX_HORIZONTAL_MOVEMENT):
	    set_direction(DIRECTION_RIGHT)
     horizontalMovement+=10
	
	
  if(event.is_action("Player_left")):
	  if(horizontalMovement <= MAX_HORIZONTAL_MOVEMENT):
	    set_direction(DIRECTION_LEFT)
		horizontalMovement-=10

  pass #We will do this later"""


export (int) var speed = 200

var velocity = Vector2()

func get_input():
    velocity = Vector2()
    if Input.is_action_pressed('ui_right'):
        #flip_horizontal = (false)
        #AnimatedSprite.position *= Vector2(-1, 1)
        set_direction(DIRECTION_RIGHT)
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        set_direction(DIRECTION_LEFT)
        velocity.x -= 1
       
    if Input.is_action_pressed('ui_down'):
        velocity.y += 1
    if Input.is_action_pressed('ui_up'):
        velocity.y -= 1
    velocity = velocity.normalized() * speed

func _physics_process(delta):
    get_input()
    move_and_slide(velocity)
		
