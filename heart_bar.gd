extends HBoxContainer

var heart = preload("res://assets/heart_full.png")

func _process(delta):
	update_health()

func update_health():
	#print("life is now ", str(Globals.life))
	if Globals.life <= 0:
		print("TODO game over")
	#print("child count: ", str(get_child_count()))
	for i in get_child_count():
		if Globals.life > i:
			get_child(i).set_visible(true)
		else:
			get_child(i).set_visible(false)
			#print("!!")
