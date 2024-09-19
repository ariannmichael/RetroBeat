extends EnemyState
class_name EnemyStateFollow

@onready var idle: EnemyStateIdle = $"../Idle"

var player: Player
var move_speed: float = 20.0


func enter() -> void:
	player = get_tree().get_first_node_in_group("Player")


func physics(_delta: float) -> EnemyState:
	var direction = player.global_position - enemy.global_position
	enemy.velocity = direction.normalized() * move_speed
	
	if direction.length() > MAX_DISTANCE_TO_PlAYER:
		return idle
	
	return null
