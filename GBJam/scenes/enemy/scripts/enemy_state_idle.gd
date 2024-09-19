extends EnemyState
class_name EnemyStateIdle

@export var move_speed: float = 15.0
@onready var follow: EnemyStateFollow = $"../Follow"

var move_direction: Vector2
var wander_time: float
var player: Player

func enter() -> void:
	randomize_wander()
	player = get_tree().get_first_node_in_group("Player")
	

func process(delta: float) -> EnemyState:
	if wander_time > 0:
		wander_time -= delta
	else:
		randomize_wander()
	
	var direction = player.global_position - enemy.global_position
	
	if direction.length() < MAX_DISTANCE_TO_PlAYER:
		return follow
	
	return null


func physics(_delta: float) -> EnemyState:
	if enemy:
		enemy.velocity = move_direction * move_speed
	
	return null


func randomize_wander() -> void:
	move_direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
	wander_time = randf_range(1, 3)
