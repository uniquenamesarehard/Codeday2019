extends RichTextLabel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var dialog = ["Hello friends", "What's up?"]
var page = 0

func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process(true)
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		if get_visible_characters() > get_total_character_count():
			if page < dialog.size() -1:
				page += 1
				set_bbcode(dialog[page])
				set_visible_characters(0)
		#else:
		#	set_visible_characters(get_total_character_count())

func _on_TextTimer_timeout():
	set_visible_characters(get_visible_characters() + 1)
