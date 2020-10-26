// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntryPoint _$EntryPointFromJson(Map<String, dynamic> json) {
  return EntryPoint(
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$EntryPointToJson(EntryPoint instance) =>
    <String, dynamic>{
      'description': instance.description,
    };

ExitPoint _$ExitPointFromJson(Map<String, dynamic> json) {
  return ExitPoint(
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ExitPointToJson(ExitPoint instance) => <String, dynamic>{
      'description': instance.description,
    };

IntermediatePoint _$IntermediatePointFromJson(Map<String, dynamic> json) {
  return IntermediatePoint(
    description: json['description'] as String,
    path: (json['path'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$IntermediatePointToJson(IntermediatePoint instance) =>
    <String, dynamic>{
      'description': instance.description,
      'path': instance.path,
    };
