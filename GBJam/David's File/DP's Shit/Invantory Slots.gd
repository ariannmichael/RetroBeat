extends Node2D


@onready var sprite_0 = $Sprite0
@onready var sprite_1 = $Sprite1
@onready var sprite_2 = $Sprite2
@onready var sprite_3 = $Sprite3
@onready var sprite_4 = $Sprite4
@onready var sprite_5 = $Sprite5
@onready var sprite_6 = $Sprite6
@onready var sprite_7 = $Sprite7

@onready var button_0 = $Button0
@onready var button_1 = $Button1
@onready var button_2 = $Button2
@onready var button_3 = $Button3
@onready var button_4 = $Button4
@onready var button_5 = $Button5
@onready var button_6 = $Button6
@onready var button_7 = $Button7


var inventory =


var tutorial = true

var activeButton = 999


func _ready():
	
	
	if ChrispsInvantory.animalType.size() > 0:
		sprite_0.texture = load(ChrispsInvantory.animalType[0])
	if ChrispsInvantory.animalType.size() > 1:
		sprite_1.texture = load(ChrispsInvantory.animalType[1])
	if ChrispsInvantory.animalType.size() > 2:
		sprite_2.texture = load(ChrispsInvantory.animalType[2])
	if ChrispsInvantory.animalType.size() > 3:
		sprite_3.texture = load(ChrispsInvantory.animalType[3])
	if ChrispsInvantory.animalType.size() > 4:
		sprite_4.texture = load(ChrispsInvantory.animalType[4])
	if ChrispsInvantory.animalType.size() > 5:
		sprite_5.texture = load(ChrispsInvantory.animalType[5])
	if ChrispsInvantory.animalType.size() > 6:
		sprite_6.texture = load(ChrispsInvantory.animalType[6])
	if ChrispsInvantory.animalType.size() > 7:
		sprite_7.texture = load(ChrispsInvantory.animalType[7])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ChrispsInvantory.animalType.size() > 7:
		$"Inv Full".show()
	else:
		$"Inv Full".hide()
	
	if Input.is_action_just_pressed("Tab"):
		$Tutorial.hide()
		if self.visible == false:
			self.show()
			
		else:
			self.hide()
	
	
	
	
	$Money.text = str(ChrispsInvantory.money)
	
	
	
	if ChrispsInvantory.animalType.size() > 0:
		sprite_0.texture = load(ChrispsInvantory.animalType[0])
	else:
		sprite_0.texture = null
	if ChrispsInvantory.animalType.size() > 1:
		sprite_1.texture = load(ChrispsInvantory.animalType[1])
	else:
		sprite_1.texture = null
	if ChrispsInvantory.animalType.size() > 2:
		sprite_2.texture = load(ChrispsInvantory.animalType[2])
	else:
		sprite_2.texture = null
	if ChrispsInvantory.animalType.size() > 3:
		sprite_3.texture = load(ChrispsInvantory.animalType[3])
	else:
		sprite_3.texture = null
	if ChrispsInvantory.animalType.size() > 4:
		sprite_4.texture = load(ChrispsInvantory.animalType[4])
	else:
		sprite_4.texture = null
	if ChrispsInvantory.animalType.size() > 5:
		sprite_5.texture = load(ChrispsInvantory.animalType[5])
	else:
		sprite_5.texture = null
	if ChrispsInvantory.animalType.size() > 6:
		sprite_6.texture = load(ChrispsInvantory.animalType[6])
	else:
		sprite_6.texture = null
	if ChrispsInvantory.animalType.size() > 7:
		sprite_7.texture = load(ChrispsInvantory.animalType[7])
	else:
		sprite_7.texture = null	


func _on_button_0_pressed():
	activeButton = 0


func _on_button_1_pressed():
	activeButton = 1 # Replace with function body.


func _on_button_2_pressed():
	activeButton = 2 # Replace with function body.


func _on_button_3_pressed():
	activeButton = 3 # Replace with function body.


func _on_button_4_pressed():
	activeButton = 4 # Replace with function body.


func _on_button_5_pressed():
	activeButton = 5 # Replace with function body.


func _on_button_6_pressed():
	activeButton = 6 # Replace with function body.


func _on_button_7_pressed():
	activeButton = 7 # Replace with function body.
