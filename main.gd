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

#func _input(event: InputEvent) -> void:
	#if event.is_action_pressed("my_action"):
		#jump()
#
#func jump():
	## add upwards force
	## play funny sound
	## play jump
	#print("JUMP")
#
#func _ready() -> void:
	#var result = add(3,5)
	#result = add(result, 10)
	#print(result)
#
#func add(num1: int, num2: int) -> int:
	#var result = num1 + num2
	#return result

# RANDOM

#func _ready():
	##var roll = randf()
	##if roll <= 0.8:
		##print("You found a common item!")
	##else:
		##print("You found a rare item!")
	#
	#var character_height = randi_range(140,210)
	#print("your character is " + str(character_height))


# DOCUMENTATION
# hover over a func, and ctrl click


# ARRAYS


#func _ready() -> void:
	#var items = ["Potion", 3, 6]
	#var tools: Array[String] = ["Potion", "Gift", "Feather"]
	#print(tools[0])
	#
	#tools[1] = "OP Sword"
	#tools.remove_at(1)
	#
	#

# LOOPS
#func _ready() -> void:
	#var items = ["Potion", "Feather", "Stolen Harp"]
	#for item in items:
		#if item.length() > 6:
			#print(item)
#
	#for n in 8:
		#print(n)
#
	## while loop
	#var glass := 0.0
	#
	#while glass < 0.5:
		#glass += randf_range(0.01, 0.2)
		#print(glass)
		#
	#print("Glass is now half full!")

# DICTIONARIES

#func _ready():
	## can add dictionaries in dictionaries
	#var players = {
		#"Crook": 	{"Level": 1, "Health": 80}, 
		#"Villain": 	{"Level": 50, "Health": 150}, 
		#"Boss": 	{"Level": 100, "Health": 500},
		#}
		#
	#players["Villain"] = 50
	#players["Dwayne"] = 999
	#
	#for username in players:
		#print(username + ": " + str(players[username]))
#
	#print(players["Boss"]["Health"])
	
	# ENUM

enum Alignment {ALLY, NEUTRAL, ENEMY}
@export var unit_alignment : Alignment

func _ready():
	if unit_alignment == Alignment.ENEMY:
		print("You are not welcome here!")
		
	else:
		print("Welcome!")
	match unit_alignment:
		Alignment.ALLY:
			print("hello friend!")
		Alignment.NEUTRAL:
			print("I come in peace!")
		Alignment.ENEMY:
			print("I COME TO DESTROY")
		_:
			print("Who's there?")



























# END
