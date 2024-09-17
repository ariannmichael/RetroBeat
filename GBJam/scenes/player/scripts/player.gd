extends CharacterBody2D
class_name Player

@onready var state_machine: PlayerStateMachine = $StateMachine
@onready var sprite: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var sprite_direction: Vector2 = Vector2.DOWN
var direction: Vector2 = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	state_machine.initialize(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")


func _physics_process(_delta: float) -> void:
	move_and_slide()


func set_direction() -> bool:
	if direction == Vector2.ZERO:
		return false
		
	var new_direction: Vector2 = sprite_direction
	
	if direction.y == 0:
		new_direction = Vector2.LEFT if direction.x < 0 else Vector2.RIGHT
	elif direction.x == 0:
		new_direction = Vector2.UP if direction.y < 0 else Vector2.DOWN
	
	if new_direction == sprite_direction:
		return false
	
	sprite_direction = new_direction
	sprite.scale.x = -1 if sprite_direction == Vector2.LEFT else 1
	return true


func update_animation(_state: String) -> void:
	pass
	#animation_player.play(state + "_" + anim_direction())


func anim_direction() -> String:
	if sprite_direction == Vector2.DOWN:
		return "down"
	elif sprite_direction == Vector2.UP:
		return "up"
	else:
		return "side"
