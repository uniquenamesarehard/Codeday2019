extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 0
var horizontalMovement = 0
const MAX_HORIZONTAL_MOVEMENT = 480
  
func _process(delta):
  move_local_x(speed*delta)
  print (delta)
  print (horizontalMovement) 
  if(self.position.x > 1  && self.position.y <= get_viewport_rect().size.x):
  	move_local_x(horizontalMovement*delta*100)
	
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
      horizontalMovement+=10
	
	
  if(event.is_action("Player_left")):
	
	
    if(horizontalMovement <= MAX_HORIZONTAL_MOVEMENT):
		
      horizontalMovement-=10
	
    pass #We will do this later
		
		
