extends Area2D

var speed = 750 # of the bullet
signal player_hit
signal enemy_hit

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += transform.x * speed * delta
	#print(transform)


func _on_body_entered(body):
	if body.name == "Player":
		player_hit.emit()
	elif body.name == "Enemy":
		enemy_hit.emit()
		
	self.queue_free() # bullet goes away after hit


func _on_enemy_hit():
	pass # Replace with function body.


func _on_player_hit():
	print("HITTTTTTT")
	Globals.life -= 1
