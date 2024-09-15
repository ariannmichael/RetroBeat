extends CharacterBody2D
var paused = false
const SPEED = 150.0
const JUMP_VELOCITY = -400.0
var dir = ""
@onready var animated_sprite_2d = $AnimatedSprite2D


func change_pause():
	paused = !paused
func _physics_process(delta):
	
	var direction = Input.get_vector("left", "right", "up", "down") 
	
	velocity = direction * SPEED
	move_and_slide()
	if velocity.x > 0:
		dir = "Right"
		anim(1)
	elif velocity.x < 0:
		dir = "Left"
		anim(1) 
	elif velocity.y < 0:
		dir = "Up"
		anim(1)
	elif velocity.y > 0:
		anim(1)
		dir = "Down"
	else:
		anim(0)
func anim(Number):
	var dire = dir
	if dire == "Up":
		if Number == 1:
			animated_sprite_2d.play("Move_up")
		elif Number == 0:
			animated_sprite_2d.play("Idle_up")
	if dire == "Down":
		if Number == 1:
			animated_sprite_2d.play("Move_down")
		elif Number == 0:
			animated_sprite_2d.play("Idle_down")
	if dire == "Left":
		if Number == 1:
			animated_sprite_2d.play("Move_left")
		elif Number == 0:
			animated_sprite_2d.play("Idle_left")
	if dire == "Right":
		if Number == 1:
			animated_sprite_2d.play("Move_right")
		elif Number == 0:
			animated_sprite_2d.play("Idle_right")
