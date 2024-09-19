extends CharacterBody2D
class_name Enemy

@onready var state_machine: EnemyStateMachine = $StateMachine
@onready var sprite: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	state_machine.initialize(self)
	

func _physics_process(_delta: float) -> void:
	move_and_slide()
	
	if velocity.length() > 0:
		animation_player.play("walk_side")
	
	sprite.scale.x = 1 if velocity.x < 0 else -1
