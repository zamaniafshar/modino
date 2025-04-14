// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'human_mod_calculator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HumanModResultImpl _$$HumanModResultImplFromJson(Map<String, dynamic> json) =>
    _$HumanModResultImpl(
      emotionalMod: $enumDecode(_$HumanModEnumMap, json['emotionalMod']),
      physicalMod: $enumDecode(_$HumanModEnumMap, json['physicalMod']),
      intellectualMod: $enumDecode(_$HumanModEnumMap, json['intellectualMod']),
      birthday: DateTime.parse(json['birthday'] as String),
    );

Map<String, dynamic> _$$HumanModResultImplToJson(
        _$HumanModResultImpl instance) =>
    <String, dynamic>{
      'emotionalMod': _$HumanModEnumMap[instance.emotionalMod]!,
      'physicalMod': _$HumanModEnumMap[instance.physicalMod]!,
      'intellectualMod': _$HumanModEnumMap[instance.intellectualMod]!,
      'birthday': instance.birthday.toIso8601String(),
    };

const _$HumanModEnumMap = {
  HumanMod.high: 'high',
  HumanMod.criticalDay: 'criticalDay',
  HumanMod.low: 'low',
};
