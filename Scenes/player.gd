extends CharacterBody2D


const SPEED = 100


func _physics_process(delta):
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		velocity.x = SPEED
	else:
		velocity.x = 0
	move_and_slide()
