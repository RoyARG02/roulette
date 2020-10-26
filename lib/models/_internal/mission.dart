import 'package:json_annotation/json_annotation.dart';

import 'complication.dart';
import 'location.dart';
import 'method.dart';
import 'target.dart';

part 'mission.g.dart';

/// The class containing information about the mission.
///
/// The [missionNo] stores the mission number, [name] the mission name,
/// [targets] the list of targets, [methods] the list of all available
/// methods/weapons found in the mission, [entryPoints] the ways the
/// player can enter into the mission level, and the [exitPoints] the
/// ways the player can exit the mission.
@JsonSerializable()
class Mission {
  /// A mission in the game.
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
  Mission({
    this.missionNo,
    this.name,
    this.targets,
    this.methods,
    this.entryPoints,
    this.exitPoints,
    this.specialComplications,
    this.intermediatePoints,
  });

  factory Mission.fromJson(Map<String, dynamic> json) => _$MissionFromJson(json);

  Map<String, dynamic> toJson() => _$MissionToJson(this);

  /// The position of the mission in the level sequence.
  @JsonKey(required: true)
  final int missionNo;

  /// The name of the mission.
  @JsonKey(required: true)
  final String name;

  /// The list of targets in the mission.
  @JsonKey(disallowNullValue: true)
  final List<Target> targets;

  /// The list of methods by which the target can be eliminated in
  /// the mission.
  final List<Method> methods;

  /// The ways the mission level can be entered.
  final List<EntryPoint> entryPoints;

  /// The ways the mission level can be entered.
  final List<ExitPoint> exitPoints;

  /// Any intermediate locations the player might have to pass through.
  ///
  /// Multiple locations could be listed.
  final List<IntermediatePoint> intermediatePoints;

  /// The restrictions applied on this specific mission alongwith their
  /// odds.
  final List<SpecialComplication> specialComplications;

  // Helper functions to create arguments

  /// Creates a list of [Target] from a list of [String], containing the name
  /// of the targets.
  static List<Target> createTargetListFromStringList(List<String> targetList) =>
      targetList.map((String name) => Target(name: name)).toList();

  /// Creates a list of [Method] from a list of [String], containing the method
  /// name.
  static List<Method> createMethodListFromStringList(List<String> methodList) =>
      methodList.map((String name) => Method(name: name)).toList();

  /// Creates a [List<SpecialComplication>] from [Map<String, double>], containing the
  /// complication specific to the mission and its odds.
  static List<SpecialComplication> createSpecialComplicationMapFromStringMap(
          Map<String, double> complicationMap) =>
      complicationMap.entries.map(
        (MapEntry<String, double> entry) => SpecialComplication(description: entry.key,chance: entry.value)
      ).toList();

  /// Creates a list of [EntryPoint] from a list of [String], containing the ways
  /// the player can enter the map.
  static List<EntryPoint> createEntryPointListFromStringList(List<String> entryPointList) =>
      entryPointList.map(
        (String description) => EntryPoint(description: description)
      ).toList();

  /// Creates a list of [ExitPoint] from a list of [String], containing the ways
  /// the player can enter the map.
  static List<ExitPoint> createExitPointListFromStringList(List<String> exitPointList) =>
      exitPointList.map(
        (String description) => ExitPoint(description: description)
      ).toList();

  /// Creates a map of [List<IntermediatePoint>] from a [Map<String, List<String>>],
  /// containing the intermediate locations the player might pass through during the mission.
  static List<IntermediatePoint> createIntermediatePointsFromMap(Map<String, List<String>> map) =>
    map.entries.map(
      (MapEntry<String, List<String>> entry) =>
        IntermediatePoint(description: entry.key, path: entry.value)
    ).toList();
}
