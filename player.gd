extends CharacterBody2D

@export var Bullet : PackedScene
var screensize = Vector2(400, 880)
var speed = 300

func _physics_process(delta):

	var v = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	position += v * speed * delta
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	move_and_slide()

func shoot():
	var b = Bullet.instantiate()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform


func _on_firing_freq_timeout():
	# call shoot automatically
	shoot()
