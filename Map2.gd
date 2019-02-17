extends Sprite
func _input(event):
    if event.is_action_pressed("SHowMap2"):
        $Blueprint_FI2.visible = not $Blueprint_FI2.visible
func _process(delta):
    if Input.is_action_pressed("ui_right"):
        # Move right