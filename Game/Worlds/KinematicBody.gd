extends KinematicBody


var speed = 4  # movement speed
var spin = 0.1  # rotation speed
var velocity = Vector3.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	velocity.x = 0
	velocity.z = 0
	if Input.is_action_pressed("move_up"):
		velocity.x += -speed
		velocity.z += -speed
	if Input.is_action_pressed("move_down"):
		velocity.x += speed
		velocity.z += speed
	if Input.is_action_pressed("move_left"):
		velocity.x += -speed
		velocity.z += speed
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
		velocity.z += -speed
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
	velocity = move_and_slide(velocity, Vector3.UP)
