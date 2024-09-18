extends State
class_name Player_State_Walk

@onready var idle: State = $"../Idle"

@export var move_speed: float = 60.0


func enter() -> void:
	node.update_animation("walk")


func exit() -> void:
	pass


func process(_delta: float) -> State:
	if node.direction == Vector2.ZERO:
		return idle
	
	node.velocity = node.direction * move_speed
	
	if node.set_direction():
		node.update_animation("walk")
	
	return null


func physics(_delta: float) -> State:
	return null


func handle_input(_event: InputEvent) -> State:
	return null
