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

import 'complication.dart';
import 'location.dart';
import 'method.dart';
import 'target.dart';

part 'campaign.g.dart';

/// The class containing information about the mission.
///
/// The [missionNo] stores the mission number, [name] the mission name,
/// [targets] the list of targets, [methods] the list of all available
/// methods/weapons found in the mission, [entryPoints] the ways the
/// player can enter into the mission level, and the [exitPoints] the
/// ways the player can exit the mission.
///
/// [missionNo], [name], [targets], and [methods] must not be null.
@JsonSerializable(includeIfNull: false)
class Campaign {
  /// A mission in the campaign.
  ///
  /// [missionNo] is the order of the mission in the campaign sequence.
  ///
  /// [name] is the name of the mission.
  ///
  /// [targets] are the targets of the mission.
  ///
  /// [methods] are the elimination methods.
  ///
  /// [entryPoints] are the ways the player can enter the map.
  ///
  /// [exitPoints] are the ways the player can exit the map.
  ///
  /// [specialComplications] are the restrictions applied to the mission.
  ///
  /// [intermediatePoints] are the locations the player might go to in
  /// the mission.
  Campaign({
    required this.missionNo,
    required this.name,
    required this.targets,
    required this.methods,
    this.entryPoints,
    this.exitPoints,
    this.specialComplications,
    this.intermediatePoints,
  });

  /// The position of the mission in the level sequence.
  @JsonKey(required: true)
  final int missionNo;

  /// The name of the mission.
  @JsonKey(required: true)
  final String name;

  /// The list of targets in the mission.
  @JsonKey(disallowNullValue: true, required: true)
  final List<Target> targets;

  /// The list of methods by which the target can be eliminated in
  /// the mission.
  @JsonKey(disallowNullValue: true, required: true)
  final List<Method> methods;

  /// The ways the mission level can be entered.
  final List<EntryPoint>? entryPoints;

  /// The ways the mission level can be exited.
  final List<ExitPoint>? exitPoints;

  /// Any intermediate locations the player might have to pass through.
  ///
  /// Multiple locations could be listed.
  final List<IntermediatePoint>? intermediatePoints;

  /// The restrictions applied on this specific mission alongwith their
  /// odds.
  final List<SpecialComplication>? specialComplications;

  factory Campaign.fromJson(Map<String, dynamic> json) => _$CampaignFromJson(json);
  Map<String, dynamic> toJson() => _$CampaignToJson(this);

  @override
  String toString() {
    String header = "Campaign: ${this.missionNo}. ${this.name}";
    String description = "Targets: ${this.targets}\nMethods: ${this.methods}";
    String otherInfo = "Entry: ${this.entryPoints}\nExit: ${this.exitPoints}\nIntermediate: ${this.intermediatePoints}";
    String complications = "Complications: ${this.specialComplications}";

    return "$header\n$description\n\n$otherInfo\n\n$complications\n";
  }
}
