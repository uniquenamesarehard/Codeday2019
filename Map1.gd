extends Sprite

func get_input():
    if InputEventAction.is_action_pressed('ShowMap1'):
      $"res://Blueprint Fl1.png".visable = not $"res://Blueprint Fl1.png".visable
      show("res://Blueprint Fl1.png")