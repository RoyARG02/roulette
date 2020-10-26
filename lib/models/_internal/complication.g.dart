// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialComplication _$SpecialComplicationFromJson(Map<String, dynamic> json) {
  return SpecialComplication(
    description: json['description'] as String,
    chance: (json['chance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$SpecialComplicationToJson(
        SpecialComplication instance) =>
    <String, dynamic>{
      'chance': instance.chance,
      'description': instance.description,
    };

GenericComplication _$GenericComplicationFromJson(Map<String, dynamic> json) {
  return GenericComplication(
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$GenericComplicationToJson(
        GenericComplication instance) =>
    <String, dynamic>{
      'description': instance.description,
    };
