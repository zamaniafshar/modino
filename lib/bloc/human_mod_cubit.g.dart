// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'human_mod_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HumanModInitialImpl _$$HumanModInitialImplFromJson(
        Map<String, dynamic> json) =>
    _$HumanModInitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$HumanModInitialImplToJson(
        _$HumanModInitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$HumanModCalculatedImpl _$$HumanModCalculatedImplFromJson(
        Map<String, dynamic> json) =>
    _$HumanModCalculatedImpl(
      result: HumanModResult.fromJson(json['result'] as Map<String, dynamic>),
      birthday: DateTime.parse(json['birthday'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$HumanModCalculatedImplToJson(
        _$HumanModCalculatedImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'birthday': instance.birthday.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$HumanModNotCalculatedImpl _$$HumanModNotCalculatedImplFromJson(
        Map<String, dynamic> json) =>
    _$HumanModNotCalculatedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$HumanModNotCalculatedImplToJson(
        _$HumanModNotCalculatedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
