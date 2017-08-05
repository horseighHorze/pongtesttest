extends KinematicBody2D

onready var LocationX = get_node(self).get_pos().x
onready var LocationY = get_node(self).get_pos().y
onready var Rotation = get_node(self).get_rot()
var UpSpeed = 10
var DownSpeed = 10
var FrontRotateRate = 5
var BackRotateRate = 5
var Power = null

func _ready():
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	if input.is_action_pressed("GreenUp"):
		set_pos(Vector2(LocationX, LocationY -10*UpSpeed))
		
	elif input.is_action_pressed("GreenDown"):
		set_pos(Vector2(LocationX, LocationY +10*DownSpeed))
		
	elif input.is_action_pressed("GreenRotateFront"):
		set_rot(Rotation + 10*FrontRotateRate)
		
	elif input.is_action_pressed("GreenRotateBack"):
		set_rot(Rotation + 10*BackRotateRate)
		
	elif input.is_action_pressed("GreenPower"):
		pass