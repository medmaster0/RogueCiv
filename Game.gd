extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (PackedScene) var Creature;
export (PackedScene) var Item;
export (PackedScene) var CaveMap;

var map_creatures = []; #list of all the creatures on map
var num_creatures = 12; #number of all creatures on map..
#One ladder and flag correspond to each creature
var map_ladders = [] #list of all ladders on map (and has a flag next to it)
var map_flags = [] #list of the flags on the map

var map_items = []; #list of all items on the map... 
#TODO: should be indexed by position...


#STANDARD GAME SCENE GLOBALS
var world_width #the size of the map (in pixels)
var world_height #the size of the map (in pixels)
var map_width #the size of the map (in cells/tiles) SCREEN DIMS!!
var map_height #the size of the map (in cells/tiles) SCREEN DIMS!!
var cell_size #the amount of pixels in a cell/tile
#BROADER WORLD VARS
var max_x_map = 64
var max_y_map = 29
var min_x_map = 0
var min_y_map = 0

#More Globals
var back_col #will be constantly changing (in increments though since it's expensive)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	
	randomize(); 
	
	#Screen Dimension stuff
	world_width = get_viewport().size.x
	world_height = get_viewport().size.y
	map_width = int($TileMap.world_to_map(Vector2(world_width,0)).x)
	map_height = int($TileMap.world_to_map(Vector2(0,world_height)).y)
	
	#random background color
	back_col = Color(randf(), randf(), randf())
	#back_col = MedAlgo.generate_pastel()
	#back_col = MedAlgo.color_shift(back_col, -0.8)
	$BackgroundSprite.modulate = back_col
	$BackgroundSprite.scale = Vector2(map_width+1,map_height+1)
	
	#Make a bunch of rando creatures....
	for i in range(num_creatures):
		var temp_cre = Creature.instance()
		var temp_map_position = Vector2( floor(rand_range(min_x_map,max_x_map)) ,  floor(rand_range(min_y_map,max_y_map))  )
		var temp_world_position = $TileMap.map_to_world(temp_map_position); 
		temp_cre.position = temp_world_position
		add_child(temp_cre)
		map_creatures.append(temp_cre)
	
	#Make a bunch of rando items
	for i in range(10):
		var temp_item = Item.instance()
		var temp_map_position = Vector2( floor(rand_range(min_x_map,max_x_map)) ,  floor(rand_range(min_y_map,max_y_map))  )
		var temp_world_position = $TileMap.map_to_world(temp_map_position);
		temp_item.position = temp_world_position
		add_child(temp_item)
		map_items.append(temp_item)
		
	#Create a Base for each Creature -> a ladder and flag
#	for i in range(num_creatures):
#		while(true):
#			#Pick a potential location for each ladder and check if it is eligible
#			var potential_map_position = Vector2(randi()%max_x_map, randi()%max_y_map)
#			#Check the new position among all other flags and ladders
#			for check_base_item in map_flags + map_ladders:
#				var check_map_position = $TileMap.world_to_map(check_base_item.position)
#				if check_map_position == potential_map_position:
#					print("Ladder on existing ladder.... Try again")
#				else:
#					continue
				
	
	#DEBUG -> inject random creature into caveMap
	#$CaveMap.enterMainCreature(map_creatures[randi()%map_creatures.size()])
	
	#DEBUG
	var cor_maze = RogueGen.GenerateCorridorMaze(20,20,3)
	for row in cor_maze:
		print(row)
	
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	
	#Task Scheduling....
	for cre in map_creatures:
		if(cre.path.size() == 0):
			var temp_map_target = Vector2( floor(rand_range(min_x_map,max_x_map)) ,  floor(rand_range(min_y_map,max_y_map))  )
			var temp_world_target = $TileMap.map_to_world(temp_map_target)
			while(true):
				cre.path = MedAlgo.find_path(cre.position, temp_world_target, $TileMap)
				if(cre.path[0].x != 9999): #make sure it was successful...
					break
	
	
	pass

#Function that displays and populates the Creature Status Window
#Called by individual creature's scenes when they are selected
#Also handles the closing/deselecting? of other windows...
func DisplayCreature(cre):
	#Turn on window
	$CreatureDisplay.visible = true
	
	#Turn off other windows
	$ItemDisplay.visible = false
	
	#Populate the Window with passed creature data
	$CreatureDisplay.setDisplayInfo(cre)

#Function that displays and populate the Item Display Window
#Called by individual item scenes when they are pressed
#also handles the closing/deselecting of other windows
func DisplayItem(item):
	#Turn on window
	$ItemDisplay.visible = true
	
	#Turn off other windows
	$CreatureDisplay.visible = false
	
	#Populate the window with the passed item data
	$ItemDisplay.setDisplayInfo(item)