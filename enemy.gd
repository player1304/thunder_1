extends CharacterBody2D

@export var Bullet : PackedScene
var screensize = Vector2(400, 880)
var speed = 300

func _ready():
	$FiringFreq.wait_time = 0.75 # shooting speed for enemies

func _physics_process(delta):
	pass

func shoot():
	var b = Bullet.instantiate()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform

func _on_firing_freq_timeout():
	# call shoot automatically
	shoot()
