extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (PackedScene) var Creature;
export (PackedScene) var Item;
export (PackedScene) var CaveMap;

var map_creatures = []; #list of all the creatures on map
#var num_creatures = 12; #number of all creatures on map..
var num_creatures = 12;
var selected_creature; 

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
var map_buildings = [] #building items (no diff between top and bottom) -> Always under creature
var neighboorhood_layout #will hold the neighborhood layout data
var neighboorhood_flow_map #Will hold the layout flow data
var wall_indices = [102] #tile indices that creatures can't walk through
var street_blocks = [] #will hold the street block objects

#STANDARD GAME SCENE GLOBALS
var world_width #the size of the map (in pixels)
var world_height #the size of the map (in pixels)
var map_width #the size of the map (in cells/tiles) SCREEN DIMS!!
var map_height #the size of the map (in cells/tiles) SCREEN DIMS!!
var cell_size #the amount of pixels in a cell/tile
#BROADER WORLD VARS
var max_x_block = 17
var max_y_block = 17
var max_x_map = 8 * max_x_block #How big the generated map is... (8 tiles per block)
var max_y_map = 8 * max_y_block
var min_x_map = 0
var min_y_map = 0
var max_z_map = 20 #How high the map goes
var min_z_map = 0 #The lowest level

#More Globals
var back_col #will be constantly changing (in increments though since it's expensive)
var street_prim_col
var street_seco_col
var street_tert_col
var street_quad_col

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
	#back_col = Color(randf(), randf(), randf())
	back_col = MedAlgo.generate_pastel()
	#back_col = MedAlgo.color_shift(back_col, -0.8) #This will be the color of wet
	$BackgroundSprite.modulate = back_col
	$BackgroundSprite.scale = Vector2(3*max_x_map,3*max_y_map)
	
	#Random street colors
	street_prim_col = Color(randf(), randf(), randf())
	street_seco_col = Color(randf(), randf(), randf())
	street_tert_col = Color(randf(), randf(), randf())
	street_quad_col = Color(randf(), randf(), randf())
	
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
		

	
	#DEBUG -> inject random creature into caveMap
	#$CaveMap.enterMainCreature(map_creatures[randi()%map_creatures.size()])
	
	#Generate Neighborhood Layout
	neighboorhood_layout = RogueGen.GenerateCorridorMaze(max_x_block,max_y_block,1)
	neighboorhood_flow_map = RogueGen.DetermineFlowMap(neighboorhood_layout)
	
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
	
	#Construct the roads (based on flow)
	for i in neighboorhood_flow_map.size(): #the x dim
		for j in neighboorhood_flow_map[i].size(): #the y dim
			var temp_x_coord = i * $TileMap.cell_size.x * tiles_per_plot
			var temp_y_coord = j * $TileMap.cell_size.y * tiles_per_plot
			var temp_z_coord = 0
			var block_type = neighboorhood_flow_map[i][j]
			match(block_type):
				'0000':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 4, 0)
				'0001':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 3, 0)
				'0010':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 3, 2)
				'0011':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 1, 0)
				'0100':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 3, 1)
				'0101':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 2, 1)
				'0110':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 2, 2)
				'0111':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 0, 2)
				'1000':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 3, 3)
				'1001':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 2, 0)
				'1010':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 2, 3)
				'1011':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 0, 0)
				'1100':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 1, 1)
				'1101':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 0, 1)
				'1110':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 0, 3)
				'1111':
					print("nothing")
				'XXXX':
					BuildingGen.put_street_block(self, temp_x_coord, temp_y_coord, temp_z_coord, 5, 0)

	#Make a bunch of rando creatures....
	for i in range(num_creatures):
		var temp_cre = Creature.instance()
		var is_on_blocked_tile = true #Gotta make sure creature isn't blocked
		while(is_on_blocked_tile == true):
			var temp_map_position = Vector2( floor(rand_range(min_x_map,max_x_map)) ,  floor(rand_range(min_y_map,max_y_map))  )
			var check_block_coord = Vector3(temp_map_position.x, temp_map_position.y, 0)
			if MedAlgo.are_tile_indices_at(map_buildings, wall_indices, check_block_coord) == false:
				var temp_world_position = $TileMap.map_to_world(temp_map_position); 
				temp_cre.position = temp_world_position
				add_child(temp_cre)
				temp_cre.map_coords = Vector3(temp_map_position.x, temp_map_position.y, 0)
				map_creatures.append(temp_cre)
				is_on_blocked_tile = false
	selected_creature = map_creatures[0] #Default, select first

	#DEBUG CODE DOWN HERE

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	
	#Task Scheduling....
	for cre in map_creatures:
		if(cre.path.size() == 0):
			var found_path = false
			while(found_path == false): 
				var temp_map_target = Vector2( floor(rand_range(min_x_map,max_x_map)) ,  floor(rand_range(min_y_map,max_y_map))  )
				var temp_world_target = $TileMap.map_to_world(temp_map_target)
				#Gotta make sure the target isn't in a wall....
				var check_vector = Vector3(temp_map_target.x,temp_map_target.y,0)
				if(MedAlgo.is_in_bounds(check_vector, map_buildings) == true):
					if(MedAlgo.are_tile_indices_at(map_buildings, wall_indices, check_vector) == false):
						cre.path = MedAlgo.find_path_items(cre.map_coords, check_vector, map_buildings)
						if cre.path != [9999,9999]:#Make sure it returned good	
							found_path = true
	
	#LOCK THE CAMERA DOWN...?? Is this good?
	$MainCamera.position = selected_creature.position
	
	pass

#Function that displays and populates the Creature Status Window
#Called by individual creature's scenes when they are selected
#Also handles the closing/deselecting? of other windows...
func DisplayCreature(cre):
	#Turn on window
	$HUDLayer/CreatureDisplay.visible = true
	
	#Turn off other windows
	$HUDLayer/ItemDisplay.visible = false
	
	#Populate the Window with passed creature data
	$HUDLayer/CreatureDisplay.setDisplayInfo(cre)
	
	#Update selected creature...
	selected_creature = cre

#Function that displays and populate the Item Display Window
#Called by individual item scenes when they are pressed
#also handles the closing/deselecting of other windows
func DisplayItem(item):
	#Turn on window
	$HUDLayer/ItemDisplay.visible = true
	
	#Turn off other windows
	$HUDLayer/CreatureDisplay.visible = false
	
	#Populate the window with the passed item data
	$HUDLayer/ItemDisplay.setDisplayInfo(item)