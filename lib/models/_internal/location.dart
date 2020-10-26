import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

/// Represents a location in the map by name or a simple description.
abstract class Location {
  Location._();

  /// The description or name of the location.
  String get description;
}

/// The ways through which the player can exit the mission.
///
/// The [description] stores the exit point, which can refer to a
/// single point or provide a description.
@JsonSerializable()
class EntryPoint implements Location {
  /// An entry point in a mission.
  ///
  /// Can refer to either a path to enter or a specific name of a
  /// location to which the player may pass through to gain entry.
  EntryPoint({this.description});

  @override
  final String description;

  factory EntryPoint.fromJson(Map<String, dynamic> json) =>
      _$EntryPointFromJson(json);

  Map<String, dynamic> toJson() => _$EntryPointToJson(this);

  @override
  String toString() => "EntryPoint: ${this.description}";
}

/// The ways through which the player can exit the mission.
///
/// The [description] stores the exit point, which can refer to a
/// single point or provide a description.
@JsonSerializable()
class ExitPoint implements Location {
  /// An exit point in a mission.
  ///
  /// Can refer to either a path to exit or a specific name of a
  /// location to which the player may pass through to exit the level.
  ExitPoint({this.description});

  @override
  final String description;

  factory ExitPoint.fromJson(Map<String, dynamic> json) =>
      _$ExitPointFromJson(json);

  Map<String, dynamic> toJson() => _$ExitPointToJson(this);

  @override
  String toString() => "ExitPoint: ${this.description}";
}

// Any intermediate location to which the player might
/// go through during the mission.
@JsonSerializable()
class IntermediatePoint implements Location {
  /// An entry point in a mission.
  ///
  /// Can refer to either a path to enter or a specific name of a
  /// location to which the player may pass through to gain entry.
  IntermediatePoint({
    this.description,
    this.path,
  });

  @override
  final String description;

  /// The ways the player can get to this [IntermediatePoint].
  final List<String> path;

  factory IntermediatePoint.fromJson(Map<String, dynamic> json) =>
      _$IntermediatePointFromJson(json);

  Map<String, dynamic> toJson() => _$IntermediatePointToJson(this);

  @override
  String toString() => "IntermediatePoint: ${this.description}";
}
