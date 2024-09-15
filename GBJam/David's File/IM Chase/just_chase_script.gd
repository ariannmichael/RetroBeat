extends Node2D


@onready var nav = $NavigationAgent2D
@onready var parent = $".."
@onready var player = $"../../Player RW"

@export var speed = 400
@export var accel = 1
var direction


func _process(delta):
	
	look_at(player.global_position)
	nav.target_position = player.global_position
	direction = nav.get_next_path_position() - global_position
	direction = direction.normalized()
	
	parent.move_and_slide()
	parent.velocity = parent.velocity.lerp(direction * speed, accel * delta)
