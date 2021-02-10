// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Campaign _$CampaignFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['missionNo', 'name', 'targets', 'methods'],
      disallowNullValues: const ['targets', 'methods']);
  return Campaign(
    missionNo: json['missionNo'] as int,
    name: json['name'] as String,
    targets: (json['targets'] as List<dynamic>)
        .map((e) => Target.fromJson(e as Map<String, dynamic>))
        .toList(),
    methods: (json['methods'] as List<dynamic>)
        .map((e) => Method.fromJson(e as Map<String, dynamic>))
        .toList(),
    entryPoints: (json['entryPoints'] as List<dynamic>?)
        ?.map((e) => EntryPoint.fromJson(e as Map<String, dynamic>))
        .toList(),
    exitPoints: (json['exitPoints'] as List<dynamic>?)
        ?.map((e) => ExitPoint.fromJson(e as Map<String, dynamic>))
        .toList(),
    specialComplications: (json['specialComplications'] as List<dynamic>?)
        ?.map((e) => SpecialComplication.fromJson(e as Map<String, dynamic>))
        .toList(),
    intermediatePoints: (json['intermediatePoints'] as List<dynamic>?)
        ?.map((e) => IntermediatePoint.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CampaignToJson(Campaign instance) {
  final val = <String, dynamic>{
    'missionNo': instance.missionNo,
    'name': instance.name,
    'targets': instance.targets,
    'methods': instance.methods,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entryPoints', instance.entryPoints);
  writeNotNull('exitPoints', instance.exitPoints);
  writeNotNull('intermediatePoints', instance.intermediatePoints);
  writeNotNull('specialComplications', instance.specialComplications);
  return val;
}
