extends KinematicBody2D

# This is a demo showing how KinematicBody2D
# move_and_slide works.

# Member 
export (int) var speed = 250
var screensize = 480*270
const MOTION_SPEED = 160 # Pixels/second

func _ready():
	screensize = get_viewport_rect().size

func _physics_process(delta):
	var motion = Vector2()
	if Input.is_action_pressed("move_left"):
		motion += Vector2(-1, 0)
	if Input.is_action_pressed("move_right"):
		motion += Vector2(1, 0)
	var velocity = Vector2() #the player's movement vector
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	position += velocity * delta
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	if velocity.x != 0:
		$AnimatedSprite.animation = "right"
		$AnimatedSprite.flip_v = false
		$AnimatedSprite.flip_h = velocity.x < 0
	motion = motion.normalized() * MOTION_SPEED

	move_and_slide(motion)

