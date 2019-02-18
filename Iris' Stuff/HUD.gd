extends Node2D
#signal new_text
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var blueprint_menu

func _ready():
	blueprint_menu = get_node("Blueprint")
	$Panel.hide()
	$ExamineText.hide()
	$MenuButton.show()
	blueprint_menu.hide()
	# Called when the node is added to the scene for the first time.
	# Initialization here

#func _process(delta):
#	pass
#	if Input.is_action_pressed("ui_select"): #and object is interactable
#		$ExamineText.text = text
#		$Panel/ExamineText.text = "Today is February 16, 2019. This is the day we build a game"
#		$Panel.show()
	#if Input.is_action_pressed("ui_accept"):
	#	end = true
	#if(end == true):
#		$Panel.hide()
#		end = false

		
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_MenuButton_pressed():
	blueprint_menu.show()

func _on_closeButton_pressed():
	blueprint_menu.hide()
	
func interactable(text):
	$ExamineText.set_visible_characters(0)
	$ExamineText.page = 0
	$ExamineText.dialog = text
	$ExamineText.show()
	$Panel.show()
	
func closeInteractable():
	$Panel.hide()
	$ExamineText.hide()
