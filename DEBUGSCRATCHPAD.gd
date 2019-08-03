extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (PackedScene) var Pheasant
export (PackedScene) var MajorArcWeapon

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

	for i in range(30):
		var temp_bird = Pheasant.instance()
		temp_bird.position = Vector2(randi()%int(get_viewport().size.x), randi()%int(get_viewport().size.y))
		add_child(temp_bird)
		
	for i in range(300):
		var temp_weapon = MajorArcWeapon.instance()
		temp_weapon.position = Vector2(randi()%int(get_viewport().size.x), randi()%int(get_viewport().size.y))
		add_child(temp_weapon)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
