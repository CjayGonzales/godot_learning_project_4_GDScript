extends Node

# INPUTS AND READY

#func _ready():
	#$Label.text = "Hello world"
	#$Label.modulate = Color.GREEN
#
## handling inputs
## https://docs.godotengine.org/en/stable/tutorials/inputs/input_examples.html
#
#func _input(event):
	#if event.is_action_pressed("my_action"):
		#$Label.modulate = Color.RED
		#
	#if event.is_action_released("my_action"):
		#$Label.modulate = Color.GREEN

# VARIABLES

#var health = 100
#
## inferred / static typing
#var damage := 15 # inferred typing - lets you choose a data type autmatically
#var doom: int = 15
#@export var look_at_me := 20 # allows to export to outside of script. can see value in inspector
#const GRAVITY = -9.81 # constants
#
#
#func _input(event):
	#if event.is_action_pressed("my_action"):
		#health -= 20
		#print(health)
		#
		#if health <= 0:
			#health = 0
			#print("You died")
		#elif health < 50:
			#print("You are injured!")
		#else:
			#print("you are healthy")
	#
	#

# FUNCTIONS
# adds readability and reusability

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("my_action"):
		jump()

func jump():
	# add upwards force
	# play funny sound
	# play jump
	print("JUMP")

func _ready() -> void:
	add(3,8)

func add(num1, num2):
	var result = num1 + num2
	print(result)
