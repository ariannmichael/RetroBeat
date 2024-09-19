extends Node
class_name EnemyState

static var enemy: Enemy

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func enter() -> void:
	pass


func exit() -> void:
	pass
	

func process(_delta: float) -> EnemyState:
	return null


func physics(_delta: float) -> EnemyState:
	return null


func handle_input(_event: InputEvent) -> EnemyState:
	return null
