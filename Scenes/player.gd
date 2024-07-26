extends CharacterBody2D


const SPEED = 100
const JUMP_VELOCITY = -300
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	move()
	jump()
	apply_gravity(delta)

func move():
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		velocity.x = SPEED
	else:
		velocity.x = 0
	move_and_slide()
	
func jump():
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
func apply_gravity(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
