/// Represents a location in the map by name or a simple description.
abstract class Location{
  /// The description or name of the location.
  final String description;
  Location({this.description});
}

/// The ways through which the player can exit the mission.
///
/// The [description] stores the exit point, which can refer to a
/// single point or provide a description.
class EntryPoint extends Location{
  /// An entry point in a mission.
  ///
  /// Can refer to either a path to enter or a specific name of a
  /// location to which the player may pass through to gain entry.
  EntryPoint({String description}): super(description: description);
}

/// The ways through which the player can exit the mission.
///
/// The [description] stores the exit point, which can refer to a
/// single point or provide a description.
class ExitPoint extends Location{
  /// An exit point in a mission.
  ///
  /// Can refer to either a path to exit or a specific name of a
  /// location to which the player may pass through to exit the level.
  ExitPoint({String description}): super(description: description);
}

// Any intermediate location to which the player might
/// go through during the mission.
class IntermediatePoint extends Location{
  /// An entry point in a mission.
  ///
  /// Can refer to either a path to enter or a specific name of a
  /// location to which the player may pass through to gain entry.
  IntermediatePoint({String description}): super(description: description);
}