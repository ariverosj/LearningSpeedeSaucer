extends RigidBody2D

func _physics_process(delta):
	moveForce(300)

func moveForce(moveValue):
	moveRight(moveValue)
	moveleft(moveValue)
	moveUp(moveValue)
	moveDown(moveValue)

func moveRight(moveValue):
	if Input.is_action_pressed("move_right"):
		var vector= Vector2(moveValue,0)
		apply_force(vector)
	
func moveleft(moveValue):
	if Input.is_action_pressed("move_left"):
		var vector= Vector2(-moveValue,0)
		apply_force(vector)

func moveUp(moveValue):
	if Input.is_action_pressed("move_up"):
		var vector= Vector2(0,-moveValue)
		apply_force(vector)

func moveDown(moveValue):
	if Input.is_action_pressed("move_down"):
		var vector= Vector2(0,moveValue)
		apply_force(vector)
