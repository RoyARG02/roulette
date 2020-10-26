// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mission _$MissionFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['missionNo', 'name'],
      disallowNullValues: const ['targets']);
  return Mission(
    missionNo: json['missionNo'] as int,
    name: json['name'] as String,
    targets: (json['targets'] as List)
        ?.map((e) =>
            e == null ? null : Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    methods: (json['methods'] as List)
        ?.map((e) =>
            e == null ? null : Method.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entryPoints: (json['entryPoints'] as List)
        ?.map((e) =>
            e == null ? null : EntryPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exitPoints: (json['exitPoints'] as List)
        ?.map((e) =>
            e == null ? null : ExitPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialComplications: (json['specialComplications'] as List)
        ?.map((e) => e == null
            ? null
            : SpecialComplication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    intermediatePoints: (json['intermediatePoints'] as List)
        ?.map((e) => e == null
            ? null
            : IntermediatePoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MissionToJson(Mission instance) {
  final val = <String, dynamic>{
    'missionNo': instance.missionNo,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('targets', instance.targets);
  val['methods'] = instance.methods;
  val['entryPoints'] = instance.entryPoints;
  val['exitPoints'] = instance.exitPoints;
  val['intermediatePoints'] = instance.intermediatePoints;
  val['specialComplications'] = instance.specialComplications;
  return val;
}
