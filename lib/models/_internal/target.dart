import 'package:json_annotation/json_annotation.dart';

part 'target.g.dart';

/// The target information of the level.
///
/// The [name] stores the name/target identifier of the target.
@JsonSerializable()
class Target {
  /// The name of the target.
  final String name;

  /// A target in a mission.
  Target({this.name});

  factory Target.fromJson(Map<String, dynamic> json) => _$TargetFromJson(json);

  Map<String, dynamic> toJson() => _$TargetToJson(this);

  @override
  String toString() => "Target: ${this.name}";
}
