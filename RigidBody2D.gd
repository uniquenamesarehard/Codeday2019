extends RigidBody2D
#signal hit

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (int) var speed = 150
var screensize = 480*270

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	screensize = get_viewport_rect().size
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _process(delta):
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


func _on_Player_body_entered(body):
	emit_signal("hit")
	$CollisionShape2D.disabled = true

func start(pos):
	position = -pos
	$CollisionShape2D.disabled = false
