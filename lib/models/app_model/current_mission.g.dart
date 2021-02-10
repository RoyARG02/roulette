// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentMission _$CurrentMissionFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['missionNo', 'name', 'killConditions'],
      disallowNullValues: const ['killConditions']);
  return CurrentMission(
    missionNo: json['missionNo'] as int,
    name: json['name'] as String,
    entryPoint: json['entryPoint'] as String?,
    killConditions: (json['killConditions'] as List<dynamic>)
        .map((e) => Map<String, String>.from(e as Map))
        .toList(),
    exitPoint: json['exitPoint'] as String?,
    intermediatePoints: (json['intermediatePoints'] as List<dynamic>?)
        ?.map((e) => Map<String, String>.from(e as Map))
        .toList(),
    complications: (json['complications'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$CurrentMissionToJson(CurrentMission instance) {
  final val = <String, dynamic>{
    'missionNo': instance.missionNo,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entryPoint', instance.entryPoint);
  val['killConditions'] = instance.killConditions;
  writeNotNull('exitPoint', instance.exitPoint);
  writeNotNull('intermediatePoints', instance.intermediatePoints);
  writeNotNull('complications', instance.complications);
  return val;
}
