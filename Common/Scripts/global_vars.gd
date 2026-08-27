extends Node

var sound_effect_volume : float = 0.5
var music_volume: float = 0.5
var current_mission = 6
var intro_shown: bool = false

var missions: Array[MissionInfo] = [MissionInfo.createMissionOne(), MissionInfo.createMissionTwo(), MissionInfo.createMissionThree(), MissionInfo.createMissionFour(), MissionInfo.createMissionFive(), MissionInfo.createMissionSix(), MissionInfo.createMissionSeven()]
