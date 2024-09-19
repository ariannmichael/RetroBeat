extends PlayerState
class_name PlayerStateWalk

@onready var idle: PlayerState = $"../Idle"

@export var move_speed: float = 60.0


func enter() -> void:
	player.update_animation("walk")


func exit() -> void:
	pass


func process(_delta: float) -> PlayerState:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.set_direction():
		player.update_animation("walk")
	
	return null


func physics(_delta: float) -> PlayerState:
	return null


func handle_input(_event: InputEvent) -> PlayerState:
	return null
