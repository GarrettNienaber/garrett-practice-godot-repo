extends StaticBody2D

var maxspeed = 300
var maxy = 584
var miny = 64

func _physics_process(delta):
	var speed = 0;
	if Input.is_action_pressed("move_up"):
		speed = delta * -maxspeed;
	elif Input.is_action_pressed("move_down"):
		speed = delta * maxspeed;
	
	global_position.y = clamp(global_position.y + speed, miny, maxy)
	
		
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
