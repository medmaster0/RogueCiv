extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# MASTER ITEM LIST
# 0 - ACUATOR
# 1 - AMETHYST
# 2 - AMULET
# 3 - ANGEL WING
# 4 - AQUAMARINE
# 5 - AVIATOR COAT
# 6 - BOOK
# 7 - BOTTLE
# 8 - BOXING GLOVE
# 9 - BUSTER
# 10 - CAP
# 11 - CD-ROM
# 12 - CLAW
# 13 - COIN (PAINTING)
# 14 - CONTROLLER
# 15 - CRUTCH
# 16 - DEFENDING
# 17 - DIAMOND
# 18 - DOLLHOUSE (PAINTING)
# 19 - DRESS
# 20 - FEARSTONE
# 21 - FIGURINE
# 22 - FLOPPY DISK
# 23 - FOLKLORE
# 24 - GARNET
# 25 - GEM RING
# 26 - GENERATOR
# 27 - HANDGUN LS
# 28 - HANDGUN MS
# 29 - HANDGUN SS
# 30 - HARD DISK 
# 31 - HELMET
# 32 - JADE
# 33 - JUMPSUIT
# 34 - KNIFE
# 35 - KNUCKLES
# 36 - LONGSWORD
# 37 - MEDICINE
# 38 - METAL LUMP
# 39 - METAL RING
# 40 - OPAL
# 41 - PAGER
# 42 - PAINTING
# 43 - PANTALOONS
# 44 - PEARL
# 45 - PORCELAIN
# 46 - RELEASER
# 47 - RUBY
# 48 - SAPPHIRE
# 49 - SCRAP
# 50 - SENSOR
# 51 - SHOTGUN LS
# 52 - SHOTGUN MS
# 53 - SHOTGUN SS
# 54 - SWAT VEST
# 55 - SWORD
# 56 - TOPAZ
# 57 - TRAVEL
# 58 - TRENCHCOAT
# 59 - TURQUOISE
# 60 - UNIT X
# 61 - VASE
# 62 - VINTAGE
# 63 - WARFARE
# 64 - WARGUN LS
# 65 - WARGUN MS
# 66 - WARGUN SS
# 67 - WOOD DOLL

# MISC
# 68 - BRIEFCASE
# 69 - LICENSE
# 70 - CONTRACT







#LOAD UP ALL THE SPRITES!!!

var actuatorPrim = preload("res://Tiles//battle_hunt//actuator_xPrim.png")
var actuatorSeco = preload("res://Tiles//battle_hunt//actuator_xSeco.png")
var actuatorTert = preload("res://Tiles//battle_hunt//actuator_xTert.png")
var actuatorQuad = preload("res://Tiles//battle_hunt//actuator_xQuad.png")

var amethystPrim = preload("res://Tiles//battle_hunt//amethystPrim.png")

var amuletPrim = preload("res://Tiles//battle_hunt//amuletPrim.png")
var amuletSeco = preload("res://Tiles//battle_hunt//amuletSeco.png")
var amuletTert = preload("res://Tiles//battle_hunt//amuletTert.png")

var angelWingPrim = preload("res://Tiles//battle_hunt//angel_wingPrim.png")
var angelWingSeco = preload("res://Tiles//battle_hunt//angel_wingSeco.png")

var aquamarinePrim = preload("res://Tiles//battle_hunt//aquamarinePrim.png")

var aviatorCoatPrim = preload("res://Tiles//battle_hunt//aviator_coatPrim.png")
var aviatorCoatSeco = preload("res://Tiles//battle_hunt//aviator_coatSeco.png")
var aviatorCoatTert = preload("res://Tiles//battle_hunt//aviator_coatTert.png")

var bookPrim = preload("res://Tiles//battle_hunt//bookPrim.png")
var bookSeco = preload("res://Tiles//battle_hunt//bookSeco.png")
var bookTert = preload("res://Tiles//battle_hunt//bookTert.png")

var bottlePrim = preload("res://Tiles//battle_hunt//bottlePrim.png")
var bottleSeco = preload("res://Tiles//battle_hunt//bottleSeco.png")

var boxingGlovePrim = preload("res://Tiles//battle_hunt//boxing_glovePrim.png")
var boxingGloveSeco = preload("res://Tiles//battle_hunt//boxing_gloveSeco.png")

var busterPrim = preload("res://Tiles//battle_hunt//busterPrim.png")
var busterSeco = preload("res://Tiles//battle_hunt//busterSeco.png")

var capPrim = preload("res://Tiles//battle_hunt//capPrim.png")
var capSeco = preload("res://Tiles//battle_hunt//capSeco.png")

var cdromPrim = preload("res://Tiles//battle_hunt//CDROMPrim.png")
var cdromSeco = preload("res://Tiles//battle_hunt//CDROMSeco.png")

var clawPrim = preload("res://Tiles//battle_hunt//clawPrim.png")
var clawSeco = preload("res://Tiles//battle_hunt//clawSeco.png")

var coinPrim = preload("res://Tiles//battle_hunt//coinPrim.png")
var coinSeco = preload("res://Tiles//battle_hunt//coinSeco.png")
var coinTert = preload("res://Tiles//battle_hunt//coinTert.png")
var coinQuad = preload("res://Tiles//battle_hunt//coinQuad.png")
var coinQuin = preload("res://Tiles//battle_hunt//coinQuin.png")
var coinSext = preload("res://Tiles//battle_hunt//coinSext.png")

var controllerPrim = preload("res://Tiles//battle_hunt//controllerPrim.png")
var controllerSeco = preload("res://Tiles//battle_hunt//controllerSeco.png")
var controllerTert = preload("res://Tiles//battle_hunt//controllerTert.png")

var crutchPrim = preload("res://Tiles//battle_hunt//crutchPrim.png")
var crutchSeco = preload("res://Tiles//battle_hunt//crutchSeco.png")

var defendingPrim = preload("res://Tiles//battle_hunt//defendingPrim.png")
var defendingSeco = preload("res://Tiles//battle_hunt//defendingSeco.png")

var diamondPrim = preload("res://Tiles//battle_hunt//diamondPrim.png")

var dollhousePrim = preload("res://Tiles//battle_hunt//dollhousePrim.png")
var dollhouseSeco = preload("res://Tiles//battle_hunt//dollhouseSeco.png")
var dollhouseTert = preload("res://Tiles//battle_hunt//dollhouseTert.png")
var dollhouseQuad = preload("res://Tiles//battle_hunt//dollhouseQuad.png")
var dollhouseQuin = preload("res://Tiles//battle_hunt//dollhouseQuin.png")

var dressPrim = preload("res://Tiles//battle_hunt//dressPrim.png")

var fearstonePrim = preload("res://Tiles//battle_hunt//fear_stonePrim.png")
var fearstoneSeco = preload("res://Tiles//battle_hunt//fear_stoneSeco.png")
var fearstoneTert = preload("res://Tiles//battle_hunt//fear_stoneTert.png")
var fearstoneQuad = preload("res://Tiles//battle_hunt//fear_stoneQuad.png")
var fearstoneQuin = preload("res://Tiles//battle_hunt//fear_stoneQuin.png")

var figurinePrim = preload("res://Tiles//battle_hunt//figurinePrim.png")
var figurineSeco = preload("res://Tiles//battle_hunt//figurineSeco.png")
var figurineTert = preload("res://Tiles//battle_hunt//figurineTert.png")
var figurineQuad = preload("res://Tiles//battle_hunt//figurineQuad.png")

var floppyDiskPrim = preload("res://Tiles//battle_hunt//floppy_diskPrim.png")
var floppyDiskSeco = preload("res://Tiles//battle_hunt//floppy_diskSeco.png")

var folklorePrim = preload("res://Tiles//battle_hunt//folklorePrim.png")
var folkloreSeco = preload("res://Tiles//battle_hunt//folkloreSeco.png")
var folkloreTert = preload("res://Tiles//battle_hunt//folkloreTert.png")
var folkloreQuad = preload("res://Tiles//battle_hunt//folkloreQuad.png")

var garnetPrim = preload("res://Tiles//battle_hunt//garnetPrim.png")
var garnetSeco = preload("res://Tiles//battle_hunt//garnetSeco.png")

var gemRingPrim = preload("res://Tiles//battle_hunt//gem_ringPrim.png")
var gemRingSeco = preload("res://Tiles//battle_hunt//gem_ringSeco.png")
var gemRingTert = preload("res://Tiles//battle_hunt//gem_ringTert.png")

var generatorPrim = preload("res://Tiles//battle_hunt//generatorPrim.png")
var generatorSeco = preload("res://Tiles//battle_hunt//generatorSeco.png")
var generatorTert = preload("res://Tiles//battle_hunt//generatorTert.png")
var generatorQuad = preload("res://Tiles//battle_hunt//generatorQuad.png")

var handgunLSPrim = preload("res://Tiles//battle_hunt//handgun_lsPrim.png")
var handgunLSSeco = preload("res://Tiles//battle_hunt//handgun_lsSeco.png")
var handgunLSTert = preload("res://Tiles//battle_hunt//handgun_lsTert.png")

var handgunMSPrim = preload("res://Tiles//battle_hunt//handgun_msPrim.png")
var handgunMSSeco = preload("res://Tiles//battle_hunt//handgun_msSeco.png")

var handgunSSPrim = preload("res://Tiles//battle_hunt//handgun_ssPrim.png")
var handgunSSSeco = preload("res://Tiles//battle_hunt//handgun_ssSeco.png")

var hardDiskPrim = preload("res://Tiles//battle_hunt//hard_diskPrim.png")
var hardDiskSeco = preload("res://Tiles//battle_hunt//hard_diskSeco.png")
var hardDiskTert = preload("res://Tiles//battle_hunt//hard_diskTert.png")

var helmetPrim = preload("res://Tiles//battle_hunt//helmetPrim.png")
var helmetSeco = preload("res://Tiles//battle_hunt//helmetSeco.png")
var helmetTert = preload("res://Tiles//battle_hunt//helmetTert.png")

var jadePrim = preload("res://Tiles//battle_hunt//jadePrim.png")
var jadeSeco = preload("res://Tiles//battle_hunt//jadeSeco.png")

var jumpsuitPrim = preload("res://Tiles//battle_hunt//jumpsuitPrim.png")
var jumpsuitSeco = preload("res://Tiles//battle_hunt//jumpsuitSeco.png")
var jumpsuitTert = preload("res://Tiles//battle_hunt//jumpsuitTert.png")

var knifePrim = preload("res://Tiles//battle_hunt//knifePrim.png")
var knifeSeco = preload("res://Tiles//battle_hunt//knifeSeco.png")
var knifeTert = preload("res://Tiles//battle_hunt//knifeTert.png")

var knucklesPrim = preload("res://Tiles//battle_hunt//knucklesPrim.png")

var longSwordPrim = preload("res://Tiles//battle_hunt//long_swordPrim.png")
var longSwordSeco = preload("res://Tiles//battle_hunt//long_swordSeco.png")
var longSwordTert = preload("res://Tiles//battle_hunt//long_swordTert.png")

var medicinePrim = preload("res://Tiles//battle_hunt//medicinePrim.png")
var medicineSeco = preload("res://Tiles//battle_hunt//medicineSeco.png")
var medicineTert = preload("res://Tiles//battle_hunt//medicineTert.png")

var metalLumpPrim = preload("res://Tiles//battle_hunt//metal_lumpPrim.png")

var metalRingPrim = preload("res://Tiles//battle_hunt//metal_ringPrim.png")
var metalRingSeco = preload("res://Tiles//battle_hunt//metal_ringSeco.png")

var opalPrim = preload("res://Tiles//battle_hunt//opalPrim.png")
var opalSeco = preload("res://Tiles//battle_hunt//opalSeco.png")
var opalTert = preload("res://Tiles//battle_hunt//opalTert.png")
var opalQuad = preload("res://Tiles//battle_hunt//opalQuad.png")
var opalQuin = preload("res://Tiles//battle_hunt//opalQuin.png")

var pagerPrim = preload("res://Tiles//battle_hunt//pagerPrim.png")
var pagerSeco = preload("res://Tiles//battle_hunt//pagerSeco.png")
var pagerTert = preload("res://Tiles//battle_hunt//pagerTert.png")

var paintingPrim = preload("res://Tiles//battle_hunt//paintingPrim.png")
var paintingSeco = preload("res://Tiles//battle_hunt//paintingSeco.png")
var paintingTert = preload("res://Tiles//battle_hunt//paintingTert.png")
var paintingQuad = preload("res://Tiles//battle_hunt//paintingQuad.png")
var paintingQuin = preload("res://Tiles//battle_hunt//paintingQuin.png")
var paintingSext = preload("res://Tiles//battle_hunt//paintingSext.png")

var pantaloonsPrim = preload("res://Tiles//battle_hunt//pantaloonsPrim.png")
var pantaloonsSeco = preload("res://Tiles//battle_hunt//pantaloonsSeco.png")
var pantaloonsTert = preload("res://Tiles//battle_hunt//pantaloonsTert.png")

var pearlPrim = preload("res://Tiles//battle_hunt//pearlPrim.png")
var pearlSeco = preload("res://Tiles//battle_hunt//pearlSeco.png")

var porcelainPrim = preload("res://Tiles//battle_hunt//porcelainPrim.png")
var porcelainSeco = preload("res://Tiles//battle_hunt//porcelainSeco.png")
var porcelainTert = preload("res://Tiles//battle_hunt//porcelainTert.png")
var porcelainQuad = preload("res://Tiles//battle_hunt//porcelainQuad.png")
var porcelainQuin = preload("res://Tiles//battle_hunt//porcelainQuin.png")
var porcelainSext = preload("res://Tiles//battle_hunt//porcelainSext.png")

var releaserPrim = preload("res://Tiles//battle_hunt//releaserPrim.png")
var releaserSeco = preload("res://Tiles//battle_hunt//releaserSeco.png")
var releaserTert = preload("res://Tiles//battle_hunt//releaserTert.png")

var rubyPrim = preload("res://Tiles//battle_hunt//rubyPrim.png")

var sapphirePrim = preload("res://Tiles//battle_hunt//sapphirePrim.png")

var scrapPrim = preload("res://Tiles//battle_hunt//scrapPrim.png")

var sensorPrim = preload("res://Tiles//battle_hunt//sensorPrim.png")
var sensorSeco = preload("res://Tiles//battle_hunt//sensorSeco.png")

var shotgunLSPrim = preload("res://Tiles//battle_hunt//shotgun_lsPrim.png")
var shotgunLSSeco = preload("res://Tiles//battle_hunt//shotgun_lsSeco.png")

var shotgunMSPrim = preload("res://Tiles//battle_hunt//shotgun_msPrim.png")
var shotgunMSSeco = preload("res://Tiles//battle_hunt//shotgun_msSeco.png")

var shotgunSSPrim = preload("res://Tiles//battle_hunt//shotgun_ssPrim.png")
var shotgunSSSeco = preload("res://Tiles//battle_hunt//shotgun_ssSeco.png")
var shotgunSSTert = preload("res://Tiles//battle_hunt//shotgun_ssTert.png")

var swatVestPrim = preload("res://Tiles//battle_hunt//swat_vestPrim.png")
var swatVestSeco = preload("res://Tiles//battle_hunt//swat_vestSeco.png")
var swatVestTert = preload("res://Tiles//battle_hunt//swat_vestTert.png")

var swordPrim = preload("res://Tiles//battle_hunt//swordPrim.png")
var swordSeco = preload("res://Tiles//battle_hunt//swordSeco.png")
var swordTert = preload("res://Tiles//battle_hunt//swordTert.png")

var topazPrim = preload("res://Tiles//battle_hunt//topazPrim.png")

var travelPrim = preload("res://Tiles//battle_hunt//travelPrim.png")
var travelSeco = preload("res://Tiles//battle_hunt//travelSeco.png")

var trenchcoatPrim = preload("res://Tiles//battle_hunt//trenchcoatPrim.png")
var trenchcoatSeco = preload("res://Tiles//battle_hunt//trenchcoatSeco.png")

var turquoisePrim = preload("res://Tiles//battle_hunt//turquoisePrim.png")
var turquoiseSeco = preload("res://Tiles//battle_hunt//turquoiseSeco.png")

var unitXPrim = preload("res://Tiles//battle_hunt//unit_xPrim.png")
var unitXSeco = preload("res://Tiles//battle_hunt//unit_xSeco.png")
var unitXTert = preload("res://Tiles//battle_hunt//unit_xTert.png")

var vasePrim = preload("res://Tiles//battle_hunt//vasePrim.png")
var vaseSeco = preload("res://Tiles//battle_hunt//vaseSeco.png")

var vintagePrim = preload("res://Tiles//battle_hunt//vintagePrim.png")
var vintageSeco = preload("res://Tiles//battle_hunt//vintageSeco.png")
var vintageTert = preload("res://Tiles//battle_hunt//vintageTert.png")

var warfarePrim = preload("res://Tiles//battle_hunt//warfarePrim.png")
var warfareSeco = preload("res://Tiles//battle_hunt//warfareSeco.png")

var wargunLSPrim = preload("res://Tiles//battle_hunt//wargun_lsPrim.png")
var wargunLSSeco = preload("res://Tiles//battle_hunt//wargun_lsSeco.png")

var wargunMSPrim = preload("res://Tiles//battle_hunt//wargun_msPrim.png")
var wargunMSSeco = preload("res://Tiles//battle_hunt//wargun_msSeco.png")

var wargunSSPrim = preload("res://Tiles//battle_hunt//wargun_ssPrim.png")
var wargunSSSeco = preload("res://Tiles//battle_hunt//wargun_ssSeco.png")

var woodDoolPrim = preload("res://Tiles//battle_hunt//wood_dollPrim.png")
var woodDoolSeco = preload("res://Tiles//battle_hunt//wood_dollSeco.png")

var briefcasePrim = preload("res://Tiles//battle_hunt//briefcasePrim.png")
var briefcaseSeco = preload("res://Tiles//battle_hunt//briefcaseSeco.png")
var briefcaseTert = preload("res://Tiles//battle_hunt//briefcaseTert.png")

var licensePrim = preload("res://Tiles//battle_hunt//licensePrim.png")
var licenseSeco = preload("res://Tiles//battle_hunt//licenseSeco.png")

var contractPrim = preload("res://Tiles//battle_hunt//contractPrim.png")

#Class Variables
var primColor
var secoColor
var tertColor
var quadColor
var quinColor
var sextColor
var tile_index 
var item_name #a string to be shown when selected


# Called when the node enters the scene tree for the first time.
func _ready():
	
	randomize()
	
	#Pick random tile_index (set here for debug purposesssss)
	tile_index = randi()%68
	#tile_index = 27 + randi()%3
	tile_index = 70
	setTile(tile_index)
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func setTile(in_tile_index):
	tile_index = in_tile_index
	match tile_index:
		0:
			#ACTUATOR
			item_name = "actuator"
			$Prim.texture = actuatorPrim
			$Seco.texture = actuatorSeco
			$Tert.texture = actuatorTert
			$Quad.texture = actuatorQuad
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = MedAlgo.color_shift(primColor,-0.13)
			tertColor = MedAlgo.generate_darkenable_color(0.4)
			quadColor = MedAlgo.color_shift(tertColor,-0.3)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		1:
			#AMETHYST
			item_name = "amethyst"
			$Prim.texture = amethystPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		2:
			#AMULET
			item_name = "amulet"
			$Prim.texture = amuletPrim
			$Seco.texture = amuletSeco
			$Tert.texture = amuletTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		3:
			#ANGEL WING
			item_name = "angel wing"
			$Prim.texture = angelWingPrim
			$Seco.texture = angelWingSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = MedAlgo.generate_pastel()
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		4:
			#AQUAMARINE
			item_name = "aquamarine"
			$Prim.texture = aquamarinePrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		5:
			#AVIATOR COAT
			item_name = "aviator coat"
			$Prim.texture = aviatorCoatPrim
			$Seco.texture = aviatorCoatSeco
			$Tert.texture = aviatorCoatTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			tertColor = MedAlgo.generate_darkenable_color(0.43)
			secoColor = MedAlgo.color_shift(tertColor,-0.17)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		6:
			#BOOK
			item_name = "book"
			$Prim.texture = bookPrim
			$Seco.texture = bookSeco
			$Tert.texture = bookTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor,-0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		7:
			#BOTTLE
			item_name = "bottle"
			$Prim.texture = bottlePrim
			$Seco.texture = bottleSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		8:
			#BOXING GLOVE
			item_name = "boxing glove"
			$Prim.texture = boxingGlovePrim
			$Seco.texture = boxingGloveSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		9:
			#BUSTER
			item_name = "buster"
			$Prim.texture = busterPrim
			$Seco.texture = busterSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_brown()
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		10:
			#CAP
			item_name = "cap"
			$Prim.texture = capPrim
			$Seco.texture = capSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			secoColor = MedAlgo.generate_darkenable_color(0.4)
			primColor = MedAlgo.color_shift(secoColor,-0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		11:
			#CDROM
			item_name = "CD-ROM"
			$Prim.texture = cdromPrim
			$Seco.texture = cdromSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_pastel()
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		12:
			#CLAW
			item_name = "claw"
			$Prim.texture = clawPrim
			$Seco.texture = clawSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = MedAlgo.generate_pastel()
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		13:
			#COIN (PAINTING)
			item_name = "coin painting"
			$Prim.texture = coinPrim
			$Seco.texture = coinSeco
			$Tert.texture = coinTert
			$Quad.texture = coinQuad
			$Quin.texture = coinQuin
			$Sext.texture = coinSext
			primColor = MedAlgo.generate_gold()
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(randf(), randf(), randf())
			quinColor = Color(randf(), randf(), randf())
			sextColor = Color(randf(), randf(), randf())
		14:
			#CONTROLLER
			item_name = "controller"
			$Prim.texture = controllerPrim
			$Seco.texture = controllerSeco
			$Tert.texture = controllerTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_pastel()
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(randf(), randf(), randf())
			quinColor = Color(randf(), randf(), randf())
			sextColor = Color(randf(), randf(), randf())
		15:
			#CRUTCH
			item_name = "crutch"
			$Prim.texture = crutchPrim
			$Seco.texture = crutchSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_brown()
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		16:
			#DEFENDING
			item_name = "defending notebook"
			$Prim.texture = defendingPrim
			$Seco.texture = defendingSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(1,1,1)
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		17:
			#DIAMOND
			item_name = "diamond"
			$Prim.texture = diamondPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		18:
			#DOLLHOUSE (PAINTING)
			item_name = "dollhouse painting"
			$Prim.texture = dollhousePrim
			$Seco.texture = dollhouseSeco
			$Tert.texture = dollhouseTert
			$Quad.texture = dollhouseQuad
			$Quin.texture = dollhouseQuin
			$Sext.texture = null
			primColor = MedAlgo.generate_brown()
			secoColor = MedAlgo.generate_skin_color()
			tertColor = Color(randf(),randf(),randf())
			quadColor = Color(randf(),randf(),randf())
			quinColor = Color(randf(),randf(),randf())
			sextColor = Color(1,1,1)
		19:
			#DRESS
			item_name = "dress"
			$Prim.texture = dressPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(),randf(),randf())
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		20:
			#FEAR STONE
			item_name = "fear stone"
			$Prim.texture = fearstonePrim
			$Seco.texture = fearstoneSeco
			$Tert.texture = fearstoneTert
			$Quad.texture = fearstoneQuad
			$Quin.texture = fearstoneQuin
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.6)
			secoColor = MedAlgo.color_shift(primColor,-0.17)
			tertColor = MedAlgo.generate_darkenable_color(0.4)
			quadColor = MedAlgo.color_shift(tertColor,-0.17)
			quinColor = Color(randf(), randf(), randf())
			sextColor = Color(1,1,1)
		21:
			#FIGURINE
			item_name = "figurine"
			$Prim.texture = figurinePrim
			$Seco.texture = figurineSeco
			$Tert.texture = figurineTert
			$Quad.texture = figurineQuad
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = MedAlgo.generate_pastel()
			tertColor = MedAlgo.generate_pastel()
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		22:
			#FLOPPY DISK
			item_name = "floppy disk"
			$Prim.texture = floppyDiskPrim
			$Seco.texture = floppyDiskSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		23:
			#FOLKLORE
			item_name = "folklore"
			$Prim.texture = folklorePrim
			$Seco.texture = folkloreSeco
			$Tert.texture = folkloreTert
			$Quad.texture = folkloreQuad
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(randf(), randf(), randf())
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		24:
			#GARNET
			item_name = "garnet"
			$Prim.texture = garnetPrim
			$Seco.texture = garnetSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		25:
			#GEM RING
			item_name = "gem ring"
			$Prim.texture = gemRingPrim
			$Seco.texture = gemRingSeco
			$Tert.texture = gemRingTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		26:
			#GENERATOR
			item_name = "generator"
			$Prim.texture = generatorPrim
			$Seco.texture = generatorSeco
			$Tert.texture = generatorTert
			$Quad.texture = generatorQuad
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		27:
			#HANDGUN LS
			item_name = "handgun ls"
			$Prim.texture = handgunLSPrim
			$Seco.texture = handgunLSSeco
			$Tert.texture = handgunLSTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = MedAlgo.generate_brown()
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		28:
			#HANDGUN MS
			item_name = "handgun ms"
			$Prim.texture = handgunMSPrim
			$Seco.texture = handgunMSSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		29:
			#HANDGUN SS
			item_name = "handgun ss"
			$Prim.texture = handgunSSPrim
			$Seco.texture = handgunSSSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.generate_brown()
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		30:
			#HARD DISK
			item_name = "hard disk"
			$Prim.texture = hardDiskPrim
			$Seco.texture = hardDiskSeco
			$Tert.texture = hardDiskTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(),randf(),randf())
			secoColor = Color(1,1,1)
			tertColor = MedAlgo.generate_pastel()
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		31:
			#HELMET
			item_name = "helmet"
			$Prim.texture = helmetPrim
			$Seco.texture = helmetSeco
			$Tert.texture = helmetTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(randf(), randf(), randf())
			tertColor = MedAlgo.generate_darkenable_color(0.4)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		32:
			#JADE
			item_name = "jade"
			$Prim.texture = jadePrim
			$Seco.texture = jadeSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		33:
			#JUMPSUIT
			item_name = "jumpsuit"
			$Prim.texture = jumpsuitPrim
			$Seco.texture = jumpsuitSeco
			$Tert.texture = jumpsuitTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		34:
			#KNIFE
			item_name = "knife"
			$Prim.texture = knifePrim
			$Seco.texture = knifeSeco
			$Tert.texture = knifeTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = MedAlgo.generate_brown()
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		35:
			#KNUCKLES
			item_name = "knuckles"
			$Prim.texture = knucklesPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		36:
			#LONGSWORD
			item_name = "longsword"
			$Prim.texture = longSwordPrim
			$Seco.texture = longSwordSeco
			$Tert.texture = longSwordTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = MedAlgo.generate_gold()
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		37:
			#MEDICINE
			item_name = "medicine"
			$Prim.texture = medicinePrim
			$Seco.texture = medicineSeco
			$Tert.texture = medicineTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(1,1,1)
			secoColor = Color(randf(), randf(), randf())
			tertColor = MedAlgo.generate_brown()
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		38:
			#METAL LUMP
			item_name = "metal lump"
			$Prim.texture = metalLumpPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		39:
			#METAL RING
			item_name = "metal ring"
			$Prim.texture = metalRingPrim
			$Seco.texture = metalRingSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor,-0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		40:
			#OPAL
			item_name = "opal"
			$Prim.texture = opalPrim
			$Seco.texture = opalSeco
			$Tert.texture = opalTert
			$Quad.texture = opalQuad
			$Quin.texture = opalQuin
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(randf(), randf(), randf())
			quinColor = Color(randf(), randf(), randf())
			sextColor = Color(1,1,1)
		41:
			#PAGER
			item_name = "pager"
			$Prim.texture = pagerPrim
			$Seco.texture = pagerSeco
			$Tert.texture = pagerTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		42:
			#PAINTING
			item_name = "painting"
			$Prim.texture = paintingPrim
			$Seco.texture = paintingSeco
			$Tert.texture = paintingTert
			$Quad.texture = paintingQuad
			$Quin.texture = paintingQuin
			$Sext.texture = null
			primColor = Color(1,1,1)
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(randf(), randf(), randf())
			quinColor = Color(randf(), randf(), randf())
			sextColor = Color(1,1,1)
		43:
			#PANTALOONS
			item_name = "pantaloons"
			$Prim.texture = pantaloonsPrim
			$Seco.texture = pantaloonsSeco
			$Tert.texture = pantaloonsTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		44:
			#PEARL
			item_name = "pearl"
			$Prim.texture = pearlPrim
			$Seco.texture = pearlSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_pastel()
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		45:
			#PORCELAIN
			item_name = "porcelain"
			$Prim.texture = porcelainPrim
			$Seco.texture = porcelainSeco
			$Tert.texture = porcelainTert
			$Quad.texture = porcelainQuad
			$Quin.texture = porcelainQuin
			$Sext.texture = porcelainSext
			primColor = MedAlgo.generate_skin_color()
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(randf(), randf(), randf())
			quadColor = MedAlgo.generate_gold()
			quinColor = Color(randf(), randf(), randf())
			sextColor = Color(1,1,1)
		46:
			#RELEASER
			item_name = "releaser"
			$Prim.texture = releaserPrim
			$Seco.texture = releaserSeco
			$Tert.texture = releaserTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(1,1,1)
			tertColor = Color(randf(), randf(), randf())
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		47:
			#RUBY
			item_name = "ruby"
			$Prim.texture = rubyPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		48:
			#SAPPHIRE
			item_name = "sapphite"
			$Prim.texture = sapphirePrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		49:
			#SCRAP
			item_name = "scrap"
			$Prim.texture = scrapPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		50:
			#SENSOR
			item_name = "sensor"
			$Prim.texture = sensorPrim
			$Seco.texture = sensorSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(randf(), randf(), randf())
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		51:
			#SHOTGUN LS
			item_name = "shotgun ls"
			$Prim.texture = shotgunLSPrim
			$Seco.texture = shotgunLSSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		52:
			#SHOTGUN MS
			item_name = "shotgun ms"
			$Prim.texture = shotgunMSPrim
			$Seco.texture = shotgunMSSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.generate_brown()
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		53:
			#SHOTGUN SS
			item_name = "shotgun ss"
			$Prim.texture = shotgunSSPrim
			$Seco.texture = shotgunSSSeco
			$Tert.texture = shotgunSSTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = MedAlgo.color_shift(primColor, -0.27)
			tertColor = MedAlgo.generate_brown()
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		54:
			#SWAT VEST
			item_name = "swat vest"
			$Prim.texture = swatVestPrim
			$Seco.texture = swatVestSeco
			$Tert.texture = swatVestTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.color_shift(MedAlgo.generate_darkenable_color(0.4), -0.17)
			secoColor = MedAlgo.generate_pastel()
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		55:
			#SWORD
			item_name = "sword"
			$Prim.texture = swordPrim
			$Seco.texture = swordSeco
			$Tert.texture = swordTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_pastel()
			secoColor = MedAlgo.color_shift(primColor, -0.17)
			tertColor = MedAlgo.generate_brown()
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		56:
			#TOPAZ
			item_name = "topaz"
			$Prim.texture = topazPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		57:
			#TRAVEL
			item_name = "travel notebook"
			$Prim.texture = travelPrim
			$Seco.texture = travelSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(1,1,1)
			secoColor = MedAlgo.generate_darkenable_color(0.2)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		58:
			#TRENCHCOAT
			item_name = "trenchcoat"
			$Prim.texture = trenchcoatPrim
			$Seco.texture = trenchcoatSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = MedAlgo.color_shift(primColor,-0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		59:
			#TURQUOISE
			item_name = "turquoise"
			$Prim.texture = turquoisePrim
			$Seco.texture = turquoiseSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		60:
			#UNIT X
			item_name = "unit x"
			$Prim.texture = unitXPrim
			$Seco.texture = unitXSeco
			$Tert.texture = unitXTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.4)
			secoColor = Color(randf(), randf(), randf())
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		61:
			#VASE
			item_name = "vase"
			$Prim.texture = vasePrim
			$Seco.texture = vaseSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			secoColor = MedAlgo.generate_darkenable_color(0.4)
			primColor = MedAlgo.color_shift(secoColor, -0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		62:
			#VINTAGE
			item_name = "vintage"
			$Prim.texture = vintagePrim
			$Seco.texture = vintageSeco
			$Tert.texture = vintageTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = MedAlgo.generate_darkenable_color(0.4)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		63:
			#WARFARE
			item_name = "warfare notebook"
			$Prim.texture = warfarePrim
			$Seco.texture = warfareSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = Color(1,1,1)
			secoColor = MedAlgo.generate_darkenable_color(0.2)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		64:
			#WARGUN LS
			item_name = "wargun ls"
			$Prim.texture = wargunLSPrim
			$Seco.texture = wargunLSSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = MedAlgo.color_shift(primColor,-0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		65:
			#WARGUN MS
			item_name = "wargun ms"
			$Prim.texture = wargunMSPrim
			$Seco.texture = wargunMSSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = MedAlgo.color_shift(primColor,-0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		66:
			#WARGUN SS
			item_name = "wargun ss"
			$Prim.texture = wargunSSPrim
			$Seco.texture = wargunSSSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = MedAlgo.color_shift(primColor,-0.17)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		67:
			#WOOD DOLL
			item_name = "wood doll"
			$Prim.texture = woodDoolPrim
			$Seco.texture = woodDoolSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_darkenable_color(0.2)
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		##############   MISC
		68:
			#BRIEFCASE
			item_name = "briefcase"
			$Prim.texture = briefcasePrim
			$Seco.texture = briefcaseSeco
			$Tert.texture = briefcaseTert
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			secoColor = MedAlgo.generate_brown()
			primColor = MedAlgo.color_shift(secoColor,0.17)
			tertColor = MedAlgo.generate_darkenable_color(0.7)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		69:
			#LICENSE
			item_name = "license"
			$Prim.texture = licensePrim
			$Seco.texture = licenseSeco
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_pastel()
			secoColor = MedAlgo.generate_darkenable_color(0.4)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)
		70:
			#CONTRACT
			item_name = "contract"
			$Prim.texture = contractPrim
			$Seco.texture = null
			$Tert.texture = null
			$Quad.texture = null
			$Quin.texture = null
			$Sext.texture = null
			primColor = MedAlgo.generate_pastel()
			secoColor = Color(1,1,1)
			tertColor = Color(1,1,1)
			quadColor = Color(1,1,1)
			quinColor = Color(1,1,1)
			sextColor = Color(1,1,1)

	#Update Colors...
	$Prim.modulate = primColor
	$Seco.modulate = secoColor
	$Tert.modulate = tertColor
	$Quad.modulate = quadColor
	$Quin.modulate = quinColor
	$Sext.modulate = sextColor
