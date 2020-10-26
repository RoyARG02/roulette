import 'package:json_annotation/json_annotation.dart';

part 'method.g.dart';

/// An weapon or a method that can be used to eliminate a target
/// in the level.
///
/// The [name] stores the name or method of the elimination.
@JsonSerializable()
class Method {
  /// The name or description of the method of the weapon/method.
  final String name;

  /// An weapon or a method to eliminate the target.
  Method({this.name});

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);

  Map<String, dynamic> toJson() => _$MethodToJson(this);

  @override
  String toString() => "Method: ${this.name}";
}
