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
    required this.description,
    required this.chance,
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
  GenericComplication({required this.description});

  /// The list of generic complications.
  @JsonKey(ignore: true)
  static List<GenericComplication> get genericComplications => [
        GenericComplication(description: "Do not get shot at by the guards."),
        GenericComplication(description: "Do not use gunshots or explosives as distractions."),
        // TODO: Improve wording(i.e., change "knockouts" to "pacifications" here)
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
