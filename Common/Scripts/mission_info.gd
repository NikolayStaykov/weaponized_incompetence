extends Node

class_name MissionInfo

var mission_brief: String
var wind_info: String
var wind_adjust_vertical: int
var wind_adjust_horizontal: int
var target_coordinates_horizontal: int
var target_coordinates_vertical: int
var required_ammo_type: String

static func create(brief: String, wind_inf: String, wind_vert: int, wind_horiz: int, target_horiz: int, target_vert: int, ammo: String) -> MissionInfo:
	var info: MissionInfo = MissionInfo.new()
	info.mission_brief = brief
	info.wind_info = wind_inf
	info.wind_adjust_horizontal = wind_horiz
	info.wind_adjust_vertical = wind_vert
	info.target_coordinates_horizontal = target_horiz
	info.target_coordinates_vertical = target_vert
	info.required_ammo_type = ammo
	return info
	
static func createMissionOne() -> MissionInfo:
	return create("Target: Subway 1f
Grid Coordinates: 12M 14W
Vertical Angle: 45
Horizontal Angle: 52
Ammuniciton type: cluster",
"Wind speed: Strong 
Adjust Horizontal: -6
Adjust vertical: 10
",
10,
-6,
12,
14,
"Cluster")
