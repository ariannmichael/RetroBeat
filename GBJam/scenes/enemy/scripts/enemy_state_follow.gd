extends EnemyState
class_name EnemyStateFollow

@onready var idle: EnemyStateIdle = $"../Idle"

const MAX_DISTANCE_TO_PlAYER = 25

var player: Player
var move_speed: float = 40.0


func enter() -> void:
	player = get_tree().get_first_node_in_group("Player")


func physics(_delta: float) -> EnemyState:
	var direction = player.global_position - enemy.global_position
	
	if direction.length() > MAX_DISTANCE_TO_PlAYER:
		enemy.velocity = direction.normalized() * move_speed
		return null

	return idle
