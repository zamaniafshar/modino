// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'human_mod_calculator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HumanModResult _$HumanModResultFromJson(
  Map<String, dynamic> json,
) {
  return _HumanModResult.fromJson(
    json,
  );
}

/// @nodoc
mixin _$HumanModResult {
  HumanMod get emotionalMod => throw _privateConstructorUsedError;
  HumanMod get physicalMod => throw _privateConstructorUsedError;
  HumanMod get intellectualMod => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;

  /// Serializes this HumanModResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HumanModResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HumanModResultCopyWith<HumanModResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HumanModResultCopyWith<$Res> {
  factory $HumanModResultCopyWith(
          HumanModResult value, $Res Function(HumanModResult) then) =
      _$HumanModResultCopyWithImpl<$Res, HumanModResult>;
  @useResult
  $Res call(
      {HumanMod emotionalMod,
      HumanMod physicalMod,
      HumanMod intellectualMod,
      DateTime birthday});
}

/// @nodoc
class _$HumanModResultCopyWithImpl<$Res, $Val extends HumanModResult>
    implements $HumanModResultCopyWith<$Res> {
  _$HumanModResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HumanModResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emotionalMod = null,
    Object? physicalMod = null,
    Object? intellectualMod = null,
    Object? birthday = null,
  }) {
    return _then(_value.copyWith(
      emotionalMod: null == emotionalMod
          ? _value.emotionalMod
          : emotionalMod // ignore: cast_nullable_to_non_nullable
              as HumanMod,
      physicalMod: null == physicalMod
          ? _value.physicalMod
          : physicalMod // ignore: cast_nullable_to_non_nullable
              as HumanMod,
      intellectualMod: null == intellectualMod
          ? _value.intellectualMod
          : intellectualMod // ignore: cast_nullable_to_non_nullable
              as HumanMod,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HumanModResultImplCopyWith<$Res>
    implements $HumanModResultCopyWith<$Res> {
  factory _$$HumanModResultImplCopyWith(_$HumanModResultImpl value,
          $Res Function(_$HumanModResultImpl) then) =
      __$$HumanModResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HumanMod emotionalMod,
      HumanMod physicalMod,
      HumanMod intellectualMod,
      DateTime birthday});
}

/// @nodoc
class __$$HumanModResultImplCopyWithImpl<$Res>
    extends _$HumanModResultCopyWithImpl<$Res, _$HumanModResultImpl>
    implements _$$HumanModResultImplCopyWith<$Res> {
  __$$HumanModResultImplCopyWithImpl(
      _$HumanModResultImpl _value, $Res Function(_$HumanModResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of HumanModResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emotionalMod = null,
    Object? physicalMod = null,
    Object? intellectualMod = null,
    Object? birthday = null,
  }) {
    return _then(_$HumanModResultImpl(
      emotionalMod: null == emotionalMod
          ? _value.emotionalMod
          : emotionalMod // ignore: cast_nullable_to_non_nullable
              as HumanMod,
      physicalMod: null == physicalMod
          ? _value.physicalMod
          : physicalMod // ignore: cast_nullable_to_non_nullable
              as HumanMod,
      intellectualMod: null == intellectualMod
          ? _value.intellectualMod
          : intellectualMod // ignore: cast_nullable_to_non_nullable
              as HumanMod,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HumanModResultImpl extends _HumanModResult {
  const _$HumanModResultImpl(
      {required this.emotionalMod,
      required this.physicalMod,
      required this.intellectualMod,
      required this.birthday})
      : super._();

  factory _$HumanModResultImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$HumanModResultImplFromJson(
        json,
      );

  @override
  final HumanMod emotionalMod;
  @override
  final HumanMod physicalMod;
  @override
  final HumanMod intellectualMod;
  @override
  final DateTime birthday;

  @override
  String toString() {
    return 'HumanModResult(emotionalMod: $emotionalMod, physicalMod: $physicalMod, intellectualMod: $intellectualMod, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HumanModResultImpl &&
            (identical(other.emotionalMod, emotionalMod) ||
                other.emotionalMod == emotionalMod) &&
            (identical(other.physicalMod, physicalMod) ||
                other.physicalMod == physicalMod) &&
            (identical(other.intellectualMod, intellectualMod) ||
                other.intellectualMod == intellectualMod) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, emotionalMod, physicalMod, intellectualMod, birthday);

  /// Create a copy of HumanModResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HumanModResultImplCopyWith<_$HumanModResultImpl> get copyWith =>
      __$$HumanModResultImplCopyWithImpl<_$HumanModResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HumanModResultImplToJson(
      this,
    );
  }
}

abstract class _HumanModResult extends HumanModResult {
  const factory _HumanModResult(
      {required final HumanMod emotionalMod,
      required final HumanMod physicalMod,
      required final HumanMod intellectualMod,
      required final DateTime birthday}) = _$HumanModResultImpl;
  const _HumanModResult._() : super._();

  factory _HumanModResult.fromJson(
    Map<String, dynamic> json,
  ) = _$HumanModResultImpl.fromJson;

  @override
  HumanMod get emotionalMod;
  @override
  HumanMod get physicalMod;
  @override
  HumanMod get intellectualMod;
  @override
  DateTime get birthday;

  /// Create a copy of HumanModResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HumanModResultImplCopyWith<_$HumanModResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
