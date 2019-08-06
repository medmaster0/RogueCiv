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
#var map_ladders = [] #list of all ladders on map (and has a flag next to it)
#var map_flags = [] #list of the flags on the map
#var map_items = []; #list of all items on the map... 
#TODO: should be indexed by position...

################
### 3-D Indexed ITEM arrays -> Really a 4-D list
#######
### Access: map_items[x_coord][y_coord][z-_coord] = {list of Item scenes}
var map_items = [] #items that can be picked up...
#var map_buildings_top = [] #building items that should be built above everything
#var map_buildings_bot = [] #building items that should be built below everything
var map_buildings = [] #building items (no diff between top and bottom) -> Always under creature
var neighboorhood_layout #will hold the neighborhood layout data

#STANDARD GAME SCENE GLOBALS
var world_width #the size of the map (in pixels)
var world_height #the size of the map (in pixels)
var map_width #the size of the map (in cells/tiles) SCREEN DIMS!!
var map_height #the size of the map (in cells/tiles) SCREEN DIMS!!
var cell_size #the amount of pixels in a cell/tile
#BROADER WORLD VARS
var max_x_map = 64
var max_y_map = 29 #How far down the map goes before hitting interface windows
var min_x_map = 0
var min_y_map = 0
var max_z_map = 20 #How high the map goes
var min_z_map = 0 #The lowest level

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
	
	#Initialize Item Arrays
	#MAP ITEMS
	for i in range(max_x_map+16):
		var x_list = []
		for j in range(max_y_map+16):
			var y_list = []
			for z in range(max_z_map+16):
				var z_list = []
				y_list.append(z_list)
			x_list.append(y_list)
		map_items.append(x_list)
#	#BUILDINGS BOTTOM
#	for i in range(max_x_map):
#		var x_list = []
#		for j in range(max_y_map):
#			var y_list = []
#			for z in range(max_z_map):
#				var z_list = []
#				y_list.append(z_list)
#			x_list.append(y_list)
#		map_buildings_bot.append(x_list)
#	#BUILDINGS TOP
#	for i in range(max_x_map):
#		var x_list = []
#		for j in range(max_y_map):
#			var y_list = []
#			for z in range(max_z_map):
#				var z_list = []
#				y_list.append(z_list)
#			x_list.append(y_list)
#		map_buildings_top.append(x_list)
	#BUILDINGS
	for i in range(max_x_map+16):
		var x_list = []
		for j in range(max_y_map+16):
			var y_list = []
			for z in range(max_z_map+16):
				var z_list = []
				y_list.append(z_list)
			x_list.append(y_list)
		map_buildings.append(x_list)
		

				
#	#Make a bunch of rando items
#	for i in range(10):
#		var temp_item = Item.instance()
#		var temp_map_position = Vector2( floor(rand_range(min_x_map,max_x_map)) ,  floor(rand_range(min_y_map,max_y_map))  )
#		var temp_world_position = $TileMap.map_to_world(temp_map_position);
#		temp_item.position = temp_world_position
#		add_child(temp_item)
#		map_items.append(temp_item)
		
	
	#DEBUG -> inject random creature into caveMap
	#$CaveMap.enterMainCreature(map_creatures[randi()%map_creatures.size()])
	
	#Generate Neighborhood Layout
	neighboorhood_layout = RogueGen.GenerateCorridorMaze(8,5,1)
	
	#Construct the neighboorhood
	var tiles_per_plot = 8 #how many tiles are on each building plot
	for i in neighboorhood_layout.size(): #the x dim
		for j in  neighboorhood_layout[i].size():  #the y dim
			match(neighboorhood_layout[i][j]):
				0:
					pass
				1:
					var temp_x_coord = i * $TileMap.cell_size.x * tiles_per_plot
					var temp_y_coord = j * $TileMap.cell_size.y * tiles_per_plot
					BuildingGen.put_items_building_plot(self, temp_x_coord, temp_y_coord, 0)
	pass 
	
	#DEBUG, check the items
	print( MedAlgo.are_tile_indices_at(map_buildings,[102,101],Vector3(2,2,0)) )
	print( MedAlgo.find_path_items(Vector3(0,0,0), Vector3(2,2,0), map_buildings  )  )

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