// Roulette
//     Copyright (C) 2020, 2021  Anurag Roy
//
//     This program is free software: you can redistribute it and/or modify
//     it under the terms of the GNU General Public License as published by
//     the Free Software Foundation, either version 3 of the License, or
//     (at your option) any later version.
//
//     This program is distributed in the hope that it will be useful,
//     but WITHOUT ANY WARRANTY; without even the implied warranty of
//     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//     GNU General Public License for more details.
//
//     You should have received a copy of the GNU General Public License
//     along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:json_annotation/json_annotation.dart';

part 'current_mission.g.dart';

/// The class containing information about the current mission.
///
/// This will serve as the app model of the roulette.
///
/// While very similar to the [Campaign] class, this class has all its members
/// in [String]. This has been made for easy import/export of json files as the
/// roulette result.
///
/// [killConditions] stores a random [Method] as value for each [Target] as the
/// key. This is similar to [intermediatePoints], which stores a random path as
/// value for each [IntermediatePoint].
///
/// See also:
///
///  *  [Campaign], which has similar members and stores information about
/// different campaigns.
@JsonSerializable(includeIfNull: false)
class CurrentMission {
  CurrentMission({
    required this.missionNo,
    required this.name,
    this.entryPoint,
    required this.killConditions,
    this.exitPoint,
    this.intermediatePoints,
    this.complications,
  });

  @JsonKey(required: true)
  /// The position of the mission in the level sequence.
  int missionNo;
  @JsonKey(required: true)
  /// The name of the mission.
  String name;
  /// The way the mission level must be entered.
  String? entryPoint;
  /// The ways the targets must be eliminated.
  @JsonKey(required: true, disallowNullValue: true)
  List<Map<String, String>> killConditions;
  /// The way the mission level must be exited.
  String? exitPoint;
  /// Any intermediate locations the player would have to pass through,
  /// alongwith the path the player must take to access it.
  List<Map<String, String>>? intermediatePoints;
  /// The restrictions applied on this specific mission.
  List<String>? complications;

  factory CurrentMission.fromJson(Map<String, dynamic> json) => _$CurrentMissionFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentMissionToJson(this);
}
