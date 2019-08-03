extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#MASTER ITEM LIST
# 0 - WEED
# 1 - STONE
# 2 - LADDER

#LOAD UP ALL THE SPRITES>>>>

#Resources Load
var weedPrim = preload("res://Tiles//item//weedPrim.png")
var weedSeco = preload("res://Tiles//item//weedSeco.png")
var stonePrim = preload("res://Tiles//item//stonePrim.png")
var stoneSeco = preload("res://Tiles//item//stoneSeco.png")
var ladderPrim = preload("res://Tiles//item//ladderPrim.png")
var canPrim = preload("res://Tiles//item//canPrim.png")
var canSeco = preload("res://Tiles//item//canSeco.png")
var ladderHolePrim = preload("res://Tiles//scenery//ladderHolePrim.png")
var flagPrim = preload("res://Tiles//scenery//flagPrim.png")
var flagSeco = preload("res://Tiles//scenery//flagSeco.png")

#Class Variables
var primColor
var secoColor
var tertColor
var tile_index 
var item_name #a string to be shown when selected

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize() 
	
	#Pick colors...
	primColor = Color(randf(), randf(), randf())
	secoColor = Color(randf(), randf(), randf())
	tertColor = Color(randf(), randf(), randf())
	
	#Set colors...
	$Prim.modulate = primColor
	$Seco.modulate = secoColor
	$Tert.modulate = tertColor
	
	#Pick random tile_index (set here for debug purposesssss)
	tile_index = randi()%2
	setTile(tile_index)
	
	
	pass # Replace with function body.

#CLASS FUNCS
func SetPrimColor(color):
	primColor = color
	$Prim.modulate = primColor

func SetSecoColor(color):
	secoColor = color
	$Seco.modulate = secoColor
	
func SetTertColor(color):
	tertColor = color
	$Tert.modulate = tertColor

func setTile(in_tile_index):
	tile_index = in_tile_index
	match tile_index:
		0:
			#WEED
			item_name = "weed"
			$Prim.texture = weedPrim
			$Seco.texture = weedSeco
			$Tert.texture = null
		1:
			#STONE
			item_name = "stone"
			$Prim.texture = stonePrim
			$Seco.texture = stoneSeco
			$Tert.texture = null
		2:
			#LADDER
			item_name = "ladder"
			$Prim.texture = ladderPrim
			$Seco.texture = null
			$Tert.texture = null
		3:
			#CAN
			item_name = "can"
			$Prim.texture = canPrim
			$Seco.texture = canSeco
			$Tert.texture = null
		4:
			#LADDER HOLD
			item_name = "ladder"
			$Prim.texture = ladderHolePrim
			$Seco.texture = null
			$Tert.texture = null
		5:
			#FLAG
			item_name = "flag"
			$Prim.texture = flagPrim
			$Seco.texture = flagSeco
			$Tert.texture = null

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#All this function does is pass itself to the parent Game
#By calling the funciton with itself
func _on_SelectButton_pressed():
	get_parent().DisplayItem(self)

#This function will disable the select button
func disableSelect():
	find_node("SelectButton").visible = false #need to disable button