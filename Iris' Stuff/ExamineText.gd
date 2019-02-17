extends RichTextLabel

signal closetext
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var dialog = [""]
var page = 0

func _ready():
	#set_bbcode(dialog[page])
	#set_visible_characters(0)
	set_process(true)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _input(event):
	if event.is_action_pressed("ui_accept"): 
		if get_visible_characters() > get_total_character_count():
			if page < dialog.size() -1:
				set_bbcode(dialog[page])
				set_visible_characters(0)
				page += 1
			else:
				emit_signal("closetext")
		else:
			set_visible_characters(get_total_character_count())
			#for some reason text shows one too early
	
#func _process(delta):
#	if Input.is_action_pressed("ui_accept"): 
#		if get_visible_characters() > get_total_character_count():
#			if page < dialog.size() -1:
#				page += 1
#				set_bbcode(dialog[page])
#				set_visible_characters(0)
		#elif get_visible_characters() < get_total_character_count():
		#	set_visible_characters(get_total_character_count())

func _on_TextTimer_timeout():
	set_visible_characters(get_visible_characters() + 1)
