extends State
class_name Player_State_Idle

@onready var walk: State = $"../Walk"


func enter() -> void:
	node.update_animation("idle")


func exit() -> void:
	pass


func process(_delta: float) -> State:
	if node.direction != Vector2.ZERO:
		return walk
	
	node.velocity = Vector2.ZERO
	return null


func physics(_delta: float) -> State:
	return null


func handle_input(_event: InputEvent) -> State:
	return null
