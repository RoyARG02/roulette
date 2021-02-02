// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentMission _$CurrentMissionFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['missionNo', 'name', 'killConditions']);
  return CurrentMission(
    missionNo: json['missionNo'] as int,
    name: json['name'] as String,
    entryPoint: json['entryPoint'] as String,
    killConditions: (json['killConditions'] as List)
        ?.map((e) => (e as Map<String, dynamic>)?.map(
              (k, e) => MapEntry(k, e as String),
            ))
        ?.toList(),
    exitPoint: json['exitPoint'] as String,
    intermediatePoints: (json['intermediatePoints'] as List)
        ?.map((e) => (e as Map<String, dynamic>)?.map(
              (k, e) => MapEntry(k, e as String),
            ))
        ?.toList(),
    complications:
        (json['complications'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CurrentMissionToJson(CurrentMission instance) =>
    <String, dynamic>{
      'missionNo': instance.missionNo,
      'name': instance.name,
      'entryPoint': instance.entryPoint,
      'killConditions': instance.killConditions,
      'exitPoint': instance.exitPoint,
      'intermediatePoints': instance.intermediatePoints,
      'complications': instance.complications,
    };
