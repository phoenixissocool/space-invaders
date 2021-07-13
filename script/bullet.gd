extends KinematicBody2D

var speed =500


func _ready():
	GlobalVariables.bulletTnstanceCount += 1
	set_physics_process(true)

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, -speed * delta))
	if (collidedObject):
		print(collidedObject.collider.name)
		#if collidedObject.is_in_group("death_incarnit"):
		if "death incarnit" in collidedObject.collider.name:
			collidedObject.get_collider().queue_free()
	
		queue_free()
		GlobalVariables.bulletTnstanceCount -= 1
		if "pro_death" in collidedObject.collider.name:
			get_tree().change_scene("res://you_loss.tscn")
