extends Node

class_name MissionInfo

var mission_brief: String
var wind_info: String
var wind_adjust_vertical: int
var wind_adjust_horizontal: int
var target_coordinates_horizontal: int
var target_coordinates_vertical: int
var required_ammo_type: int
var mission_end_message: String

static func create(brief: String, wind_inf: String, wind_vert: int, wind_horiz: int, target_horiz: int, target_vert: int, ammo: int, end_message: String) -> MissionInfo:
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
0,
"Can't believe neither of them got anything wrong this time.")

static func createMissionTwo() -> MissionInfo:
	return create("Target: Football Field
Grid Coordinates: 14N 43W
Vertical Angle: -11
Horizontal Angle: 39
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
14,
43,
-1,
"Of course it makes perfect sense to strike
 an above ground target with a bunker buster.")

static func createMissionThree() -> MissionInfo:
	return create("Target: Train Yard
Grid Coordinates: 27N 14W
Vertical Angle: 15
Horizontal Angle: 0
Ammuniciton type: Cluster
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
27,
14,
-1,
"One of these days Blagoev will start accounting 
accuratly for the wind, not today though.")

static func createMissionFour() -> MissionInfo:
	return create("Target: Ministry Of Cycling
Grid Coordinates: 12N 34W
Vertical Angle: 13
Horizontal Angle: 35
Ammuniciton type: Cluster
Intelligence Officer: 
D. Kasparov
Fire Control Specialist: 
V. Blagoev",
"Wind speed: Weak 
Adjust Horizontal: 1
Adjust vertical: 1
",
-1,
-1,
12,
32,
-1,
"And when Blagoev is sober enough to calculate,
 Kapsarov gives him the worng location.")


static func createMissionFive() -> MissionInfo:
	return create("Target: Outpost 21A
Grid Coordinates: 33N 19W
Vertical Angle: 15
Horizontal Angle: 16
Ammuniciton type: Pierce
Intelligence Officer: 
D. Kasparov
Fire Control Specialist: 
V. Blagoev",
"Wind speed: Moderate 
Adjust Horizontal: 2
Adjust vertical: -3
",
3,
-2,
31,
19,
0,
"What is this mission brief,
is there a gas leak at HQ?")

static func createMissionSix() -> MissionInfo:
	return create("Target: Museum of brutalism
Grid Coordinates: 36N 32W
Vertical Angle: 17
Horizontal Angle: 24
Ammuniciton type: Pierce
Intelligence Officer: 
D. Kasparov
Fire Control Specialist: 
V. Blagoev",
"Wind speed: Strong 
Adjust Horizontal: 8
Adjust vertical: -5
",
5,
-8,
36,
32,
0,
"For once they get it right and it has to be the museum,
I loved that place.")

static func createMissionSeven() -> MissionInfo:
	return create("Target: Mayoral Palace
Grid Coordinates: 37N 33W
Vertical Angle: 17
Horizontal Angle: 24
Ammuniciton type: Nuclear
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
37,
33,
1,
"I will be executed for high treason. 
\"I was just following orders\" did not work.")
