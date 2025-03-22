extends CharacterBody2D

signal score
signal score2

var speed = 300.0

func _ready():
	velocity = Vector2(-200, -200).normalized() * speed

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())

func _on_goal_body_entered(body: Node2D) -> void:
	score.emit()


func _on_goal_2_body_entered(body: Node2D) -> void:
	score2.emit()
