import 'package:json_annotation/json_annotation.dart';

part 'complication.g.dart';

/// Details any optional complications or restrictions enforced
/// in a mission.
///
/// The [description] describes the said complication.
///
/// Complications are of two types:
///
///  * Generic: They apply to any mission.
///  * Special: Mission specific complication; one special complication
/// of a mission cannot be applied to any other mission.
///
/// For instance, `The dog must survive` in `You Better Watch Out...`
/// is a [SpecialComplication].
abstract class Complication {
  /// The decription of the complication.
  String get description;

  /// The list of generic complications.
  /// A complication or a restriction enforced in a mission.
  ///
  /// It is upon the player should they wish to follow it or not.
  Complication._();
}

/// The mission specific complications.
@JsonSerializable()
class SpecialComplication implements Complication {
  SpecialComplication({
    this.description,
    this.chance,
  });

  /// The chance of this special complication being applied to a mission.
  final double chance;

  @override
  final String description;

  factory SpecialComplication.fromJson(Map<String, dynamic> json) =>
      _$SpecialComplicationFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialComplicationToJson(this);

  @override
  String toString() => "SpecialComplication: ${this.description}";
}

/// The generic complications that can be applied to any mission.
@JsonSerializable()
class GenericComplication implements Complication {
  GenericComplication({this.description});

  /// The list of generic complications.
  @JsonKey(ignore: true)
  static List<GenericComplication> get genericComplications => [
        GenericComplication(description: "Do not get shot at by the guards."),
        GenericComplication(description: "Do not use gunshots or explosives as distractions."),
        GenericComplication(description: "Do not use any unnecessary knockouts or accidents."),
        GenericComplication(description: "Do not use any disguises."),
      ];

  @override
  final String description;

  factory GenericComplication.fromJson(Map<String, dynamic> json) =>
      _$GenericComplicationFromJson(json);

  Map<String, dynamic> toJson() => _$GenericComplicationToJson(this);

  @override
  String toString() => "GenericComplication: ${this.description}";
}
