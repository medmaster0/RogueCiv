extends Node


######
######
##IMPORTANT NOTE: These building maps are accessed: var map[ROW][COL]
#					   WHEN PRINTED OUT LOOKS LIKES var map[Y-COORD][X_COORD]





#Function to generate an entire building plot
# BUILDING PLOT MAP!!!!
#
#	This is what the building plot looks like...	
#
#	22222222
#	21111112
#	21000012
#	23000612
#	21045032
#	21000012
#	21111112
#	22222222
#
#	0 - FLOOR
#	1 - WALL
#	2 - BALCONY
#	3 - DOOR
#	4 - LADDER
#	5 - FLAG
#	6 - DESK
# 
#Will return a 2D array with the following patter
# A 8 x 8 ARRAY
func gen_building_plot_map():
	
	var building_map_plot = [] # A 2D array to be returned
	
	#Initialize the ARRAY 
	for i in range(8):
		var new_row = []
		for j in range(8):
			new_row.append(2)
		building_map_plot.append(new_row)
		
	#Place the WALLS
	building_map_plot = place_rectangle_in_map(building_map_plot,1,1,6,6,1)

	#Place the FLOORS
	building_map_plot = place_rectangle_in_map(building_map_plot,2,2,4,4,0)
	
	#Place the LADDER
	building_map_plot[4][3] = 4
	
	#Place the FLAG
	building_map_plot[4][4] = 5
	
	#Place the LADDER
	building_map_plot[4][3] = 4
	
	#Place the DESK
	building_map_plot[3][5] = 6
	
	#PLACE DOORS
	building_map_plot[3][1] = 3
	building_map_plot[4][6] = 3
	
	for row in building_map_plot:
		print(row)
	
	
# UTILITY #######
#
#Will put a rectangle in the map
# Input:
# The in_map to be written to
# Specify the Top Left Corner of the rect
# Width -> x dimension
# Height -> y dimension
# What tile to set the rectangle
func place_rectangle_in_map(in_map, x_coord, y_coord, width, height, tile_index):
	var x_index # used to iterate over the map
	var y_index # used to iterate over the map
	for i in range(width):
		for j in range(height):
			in_map[x_coord + i][y_coord + j] = tile_index #set the tile
			
	return(in_map)
	
	
	
	
##Function that puts the building items in a Main Game Scene
# The game_scene will put the items as children
# But will also keep track of them in map_items[][][] 3D indexed arrays
func put_items_building_plot(game_scene, x_coord, y_coord, z_coord):
	var Item = load("res://Scenes//Item.tscn") #Used as a template for making items
	
	
	
	