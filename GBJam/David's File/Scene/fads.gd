extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"../Player2".position.x <= -100:
		$".".hide()
	print_debug($"../Player2".position.x)
