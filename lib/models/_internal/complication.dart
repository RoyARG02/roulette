/// Details any optional complications or restrictions enforced
/// in a mission.
///
/// The [description] describes the said complication.
///
/// Any complication specific to a mission are designated as
/// `special` complications and are identifed using [isGeneric]
/// parameter.
///
/// For instance, `The dog must survive` in `You Better Watch Out...`
/// is `isGeneric = false`.
///
/// If [isGeneric] is null, it defaults to `true`.
abstract class Complication{
  /// If the complication is a generic one, i.e., it applies to any
  /// mission.
  final bool isGeneric;
  /// The decription of the complication.
  final String description;
  /// The list of generic complications.
  /// A complication or a restriction enforced in a mission.
  ///
  /// It is upon the player should they wish to follow it or not.
  Complication({this.description, this.isGeneric = true});
}

/// The mission specific complications.
/// 
/// [isGeneric] here is `false`.
class SpecialComplication extends Complication{
  SpecialComplication({String description}) : super(isGeneric: false, description: description);

  @override
  String toString() => "SpecialComplication: ${this.description}";
}

/// The generic complications that can be applied to any mission.
/// 
/// [isGeneric] here is `true`.
class GenericComplication extends Complication{
  /// The list of generic complications.
  static List<GenericComplication> get genericComplications => [
    GenericComplication(description: "Do not get shot at by the guards."),
    GenericComplication(description: "Do not use gunshots or explosives as distractions."),
    GenericComplication(description: "Do not use any unnecessary knockouts or accidents."),
    GenericComplication(description: "Do not use any disguises."),
  ];

  GenericComplication({String description}) : super(description: description);

  @override
  String toString() => "GenericComplication: ${this.description}";
}