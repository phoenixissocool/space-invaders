extends KinematicBody2D

var bullet = preload("res://bullet.tscn")
var speed = 300

func _ready():
	set_process(true)
	set_physics_process(true)

func _process(delta):
	if Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletTnstanceCount < 3:
			var bulletInstance = bullet.instance()
			bulletInstance.position = Vector2(position.x, position.y -20)
			get_tree().get_root().add_child(bulletInstance)
		


func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
# warning-ignore:return_value_discarded
		move_and_collide(Vector2(-speed * delta, 0))
	elif Input.is_action_pressed("ui_right"):
# warning-ignore:return_value_discarded
		move_and_collide(Vector2(speed * delta, 0))
