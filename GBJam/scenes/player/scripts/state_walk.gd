extends State
class_name State_Walk

@onready var idle: State = $"../Idle"

@export var move_speed: float = 60.0


func enter() -> void:
	player.update_animation("walk")


func exit() -> void:
	pass


func process(_delta: float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.set_direction():
		player.update_animation("walk")
	
	return null


func physics(_delta: float) -> State:
	return null


func handle_input(_event: InputEvent) -> State:
	return null
