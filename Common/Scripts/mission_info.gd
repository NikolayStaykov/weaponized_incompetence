extends Node

class_name MissionInfo

var mission_brief: String
var wind_info: String
var wind_adjust_vertical: int
var wind_adjust_horizontal: int
var target_coordinates_horizontal: int
var target_coordinates_vertical: int
var required_ammo_type: String
var mission_end_message: String

static func create(brief: String, wind_inf: String, wind_vert: int, wind_horiz: int, target_horiz: int, target_vert: int, ammo: String, end_message: String) -> MissionInfo:
	var info: MissionInfo = MissionInfo.new()
	info.mission_brief = brief
	info.wind_info = wind_inf
	info.wind_adjust_horizontal = wind_horiz
	info.wind_adjust_vertical = wind_vert
	info.target_coordinates_horizontal = target_horiz
	info.target_coordinates_vertical = target_vert
	info.required_ammo_type = ammo
	info.mission_end_message = end_message
	return info
	
static func createMissionOne() -> MissionInfo:
	return create("Target: Subway 1f
Grid Coordinates: 12N 14W
Vertical Angle: 11
Horizontal Angle: -15
Ammuniciton type: Pierce
Intelligence Officer: 
D. Kasparov
Fire Control Specialist: 
V. Blagoev",
"Wind speed: Weak 
Adjust Horizontal: 0
Adjust vertical: 0
",
0,
0,
12,
14,
"Pierce",
"Can't believe neither of them got anything wrong this time.")

static func createMissionTwo() -> MissionInfo:
	return create("Target: Football Field
Grid Coordinates: 31N 32W
Vertical Angle: 28
Horizontal Angle: 6
Ammuniciton type: Pierce
Intelligence Officer: 
D. Kasparov
Fire Control Specialist: 
V. Blagoev",
"Wind speed: Moderate 
Adjust Horizontal: 2
Adjust vertical: -1
",
1,
-2,
2,
32,
"Cluster",
"Of course it makes perfect sense to strike an above ground target with a bunker buster.")

static func createMissionThree() -> MissionInfo:
	return create("Target: Train Yard
Grid Coordinates: 27N 14W
Vertical Angle: 15
Horizontal Angle: 0
Ammuniciton type: Pierce
Intelligence Officer: 
D. Kasparov
Fire Control Specialist: 
V. Blagoev",
"Wind speed: Strong 
Adjust Horizontal: 7
Adjust vertical: 4
",
-4,
-7,
2,
32,
"Cluster",
"One of these days Blagoev will start accounting accuratly for the wind, not today though.")
