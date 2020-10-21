import 'package:roulette/models/_internal/complication.dart';
import 'package:roulette/models/_internal/location.dart';
import 'package:roulette/models/_internal/method.dart';
import 'package:roulette/models/_internal/target.dart';

/// The class containing information about the mission.
///
/// The [missionNo] stores the mission number, [name] the mission name,
/// [targets] the list of targets, [methods] the list of all available
/// methods/weapons found in the mission, [entryPoints] the ways the
/// player can enter into the mission level, and the [exitPoints] the
/// ways the player can exit the mission.
class Mission {
  /// The position of the mission in the level sequence.
  final int missionNo;

  /// The name of the mission.
  final String name;

  /// The list of targets in the mission.
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
  final Map<String, List<IntermediatePoint>> intermediatePoints;

  /// The restrictions applied on this specific mission alongwith their
  /// odds as a map.
  final List<Map<SpecialComplication, double>> complications;

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
  /// [complications] are the restrictions applied to the mission.
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
    this.complications,
    this.intermediatePoints,
  });

  // Helper functions to create arguments

  /// Creates a list of [Target] from a list of [String], containing the name
  /// of the targets.
  static List<Target> createTargetListFromStringList(List<String> targetList) =>
      targetList.map((String name) => Target(name: name)).toList();

  /// Creates a list of [Method] from a list of [String], containing the method
  /// name.
  static List<Method> createMethodListFromStringList(List<String> methodList) =>
      methodList.map((String name) => Method(name: name)).toList();

  /// Creates a [Map<SpecialComplication,double>] from [Map<String, double>], containing the
  /// complication specific to the mission and its odds.
  static List<Map<SpecialComplication, double>> createSpecialComplicationMapFromStringMap(
          List<Map<String, double>> complicationMapList) =>
      complicationMapList.map(
        (Map<String, double> complicationMap) => complicationMap.map(
          (String key, double value) => MapEntry(SpecialComplication(description: key), value)
        )
      ).toList();

  /// Creates a list of [EntryPoint] from a list of [String], containing the ways
  /// the palyer can enter the map.
  static List<EntryPoint> createEntryPointListFromStringList(List<String> entryPointList) =>
      entryPointList.map(
        (String description) => EntryPoint(description: description)
      ).toList();

  /// Creates a list of [ExitPoint] from a list of [String], containing the ways
  /// the palyer can enter the map.
  static List<ExitPoint> createExitPointListFromStringList(List<String> exitPointList) =>
      exitPointList.map(
        (String description) => ExitPoint(description: description)
      ).toList();

  /// Creates a map of [Map<String, List<IntermediatePoint>>] from a [Map<String, List<String>>],
  /// containing the intermediate locations the player might pass through during the mission.
  static Map<String, List<IntermediatePoint>> createIntermediatePointsFromMap(Map<String, List<String>> map){
    List<IntermediatePoint> createIntermediatePointListFromStringList(List<String> list) =>
      list.map((String description) => IntermediatePoint(description: description));

    return map.map<String, List<IntermediatePoint>>(
      (String name, List<String> locations) =>
        MapEntry<String, List<IntermediatePoint>>(name, createIntermediatePointListFromStringList(locations))
    );
  }
}
