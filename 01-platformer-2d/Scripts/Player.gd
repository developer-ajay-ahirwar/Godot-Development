extends CharacterBody2D
@export var speed: float = 300.0
@export var gravity: float = 1200.0
@export var jump_force: float = 500.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	#Gravity
	if not is_on_floor():
		velocity.y += gravity*delta
	#left / Right
	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed
	
	#jump
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jump_force
	move_and_slide()
