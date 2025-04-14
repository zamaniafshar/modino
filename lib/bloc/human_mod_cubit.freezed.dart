// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'human_mod_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HumanModState _$HumanModStateFromJson(
  Map<String, dynamic> json,
) {
  switch (json['runtimeType']) {
    case 'initial':
      return HumanModInitial.fromJson(
        json,
      );
    case 'calculated':
      return HumanModCalculated.fromJson(
        json,
      );
    case 'notCalculated':
      return HumanModNotCalculated.fromJson(
        json,
      );

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HumanModState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HumanModState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HumanModResult result, DateTime birthday)
        calculated,
    required TResult Function() notCalculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HumanModResult result, DateTime birthday)? calculated,
    TResult? Function()? notCalculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HumanModResult result, DateTime birthday)? calculated,
    TResult Function()? notCalculated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HumanModInitial value) initial,
    required TResult Function(HumanModCalculated value) calculated,
    required TResult Function(HumanModNotCalculated value) notCalculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HumanModInitial value)? initial,
    TResult? Function(HumanModCalculated value)? calculated,
    TResult? Function(HumanModNotCalculated value)? notCalculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HumanModInitial value)? initial,
    TResult Function(HumanModCalculated value)? calculated,
    TResult Function(HumanModNotCalculated value)? notCalculated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this HumanModState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HumanModStateCopyWith<$Res> {
  factory $HumanModStateCopyWith(
          HumanModState value, $Res Function(HumanModState) then) =
      _$HumanModStateCopyWithImpl<$Res, HumanModState>;
}

/// @nodoc
class _$HumanModStateCopyWithImpl<$Res, $Val extends HumanModState>
    implements $HumanModStateCopyWith<$Res> {
  _$HumanModStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HumanModState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HumanModInitialImplCopyWith<$Res> {
  factory _$$HumanModInitialImplCopyWith(_$HumanModInitialImpl value,
          $Res Function(_$HumanModInitialImpl) then) =
      __$$HumanModInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HumanModInitialImplCopyWithImpl<$Res>
    extends _$HumanModStateCopyWithImpl<$Res, _$HumanModInitialImpl>
    implements _$$HumanModInitialImplCopyWith<$Res> {
  __$$HumanModInitialImplCopyWithImpl(
      _$HumanModInitialImpl _value, $Res Function(_$HumanModInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HumanModState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$HumanModInitialImpl implements HumanModInitial {
  const _$HumanModInitialImpl({final String? $type})
      : $type = $type ?? 'initial';

  factory _$HumanModInitialImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$HumanModInitialImplFromJson(
        json,
      );

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HumanModState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HumanModInitialImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HumanModResult result, DateTime birthday)
        calculated,
    required TResult Function() notCalculated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HumanModResult result, DateTime birthday)? calculated,
    TResult? Function()? notCalculated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HumanModResult result, DateTime birthday)? calculated,
    TResult Function()? notCalculated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HumanModInitial value) initial,
    required TResult Function(HumanModCalculated value) calculated,
    required TResult Function(HumanModNotCalculated value) notCalculated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HumanModInitial value)? initial,
    TResult? Function(HumanModCalculated value)? calculated,
    TResult? Function(HumanModNotCalculated value)? notCalculated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HumanModInitial value)? initial,
    TResult Function(HumanModCalculated value)? calculated,
    TResult Function(HumanModNotCalculated value)? notCalculated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HumanModInitialImplToJson(
      this,
    );
  }
}

abstract class HumanModInitial implements HumanModState {
  const factory HumanModInitial() = _$HumanModInitialImpl;

  factory HumanModInitial.fromJson(
    Map<String, dynamic> json,
  ) = _$HumanModInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$HumanModCalculatedImplCopyWith<$Res> {
  factory _$$HumanModCalculatedImplCopyWith(_$HumanModCalculatedImpl value,
          $Res Function(_$HumanModCalculatedImpl) then) =
      __$$HumanModCalculatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HumanModResult result, DateTime birthday});

  $HumanModResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$HumanModCalculatedImplCopyWithImpl<$Res>
    extends _$HumanModStateCopyWithImpl<$Res, _$HumanModCalculatedImpl>
    implements _$$HumanModCalculatedImplCopyWith<$Res> {
  __$$HumanModCalculatedImplCopyWithImpl(_$HumanModCalculatedImpl _value,
      $Res Function(_$HumanModCalculatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HumanModState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? birthday = null,
  }) {
    return _then(_$HumanModCalculatedImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as HumanModResult,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of HumanModState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HumanModResultCopyWith<$Res> get result {
    return $HumanModResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$HumanModCalculatedImpl implements HumanModCalculated {
  const _$HumanModCalculatedImpl(
      {required this.result, required this.birthday, final String? $type})
      : $type = $type ?? 'calculated';

  factory _$HumanModCalculatedImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$HumanModCalculatedImplFromJson(
        json,
      );

  @override
  final HumanModResult result;
  @override
  final DateTime birthday;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HumanModState.calculated(result: $result, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HumanModCalculatedImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result, birthday);

  /// Create a copy of HumanModState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HumanModCalculatedImplCopyWith<_$HumanModCalculatedImpl> get copyWith =>
      __$$HumanModCalculatedImplCopyWithImpl<_$HumanModCalculatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HumanModResult result, DateTime birthday)
        calculated,
    required TResult Function() notCalculated,
  }) {
    return calculated(result, birthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HumanModResult result, DateTime birthday)? calculated,
    TResult? Function()? notCalculated,
  }) {
    return calculated?.call(result, birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HumanModResult result, DateTime birthday)? calculated,
    TResult Function()? notCalculated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(result, birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HumanModInitial value) initial,
    required TResult Function(HumanModCalculated value) calculated,
    required TResult Function(HumanModNotCalculated value) notCalculated,
  }) {
    return calculated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HumanModInitial value)? initial,
    TResult? Function(HumanModCalculated value)? calculated,
    TResult? Function(HumanModNotCalculated value)? notCalculated,
  }) {
    return calculated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HumanModInitial value)? initial,
    TResult Function(HumanModCalculated value)? calculated,
    TResult Function(HumanModNotCalculated value)? notCalculated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HumanModCalculatedImplToJson(
      this,
    );
  }
}

abstract class HumanModCalculated implements HumanModState {
  const factory HumanModCalculated(
      {required final HumanModResult result,
      required final DateTime birthday}) = _$HumanModCalculatedImpl;

  factory HumanModCalculated.fromJson(
    Map<String, dynamic> json,
  ) = _$HumanModCalculatedImpl.fromJson;

  HumanModResult get result;
  DateTime get birthday;

  /// Create a copy of HumanModState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HumanModCalculatedImplCopyWith<_$HumanModCalculatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HumanModNotCalculatedImplCopyWith<$Res> {
  factory _$$HumanModNotCalculatedImplCopyWith(
          _$HumanModNotCalculatedImpl value,
          $Res Function(_$HumanModNotCalculatedImpl) then) =
      __$$HumanModNotCalculatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HumanModNotCalculatedImplCopyWithImpl<$Res>
    extends _$HumanModStateCopyWithImpl<$Res, _$HumanModNotCalculatedImpl>
    implements _$$HumanModNotCalculatedImplCopyWith<$Res> {
  __$$HumanModNotCalculatedImplCopyWithImpl(_$HumanModNotCalculatedImpl _value,
      $Res Function(_$HumanModNotCalculatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HumanModState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$HumanModNotCalculatedImpl implements HumanModNotCalculated {
  const _$HumanModNotCalculatedImpl({final String? $type})
      : $type = $type ?? 'notCalculated';

  factory _$HumanModNotCalculatedImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$HumanModNotCalculatedImplFromJson(
        json,
      );

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HumanModState.notCalculated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HumanModNotCalculatedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HumanModResult result, DateTime birthday)
        calculated,
    required TResult Function() notCalculated,
  }) {
    return notCalculated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HumanModResult result, DateTime birthday)? calculated,
    TResult? Function()? notCalculated,
  }) {
    return notCalculated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HumanModResult result, DateTime birthday)? calculated,
    TResult Function()? notCalculated,
    required TResult orElse(),
  }) {
    if (notCalculated != null) {
      return notCalculated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HumanModInitial value) initial,
    required TResult Function(HumanModCalculated value) calculated,
    required TResult Function(HumanModNotCalculated value) notCalculated,
  }) {
    return notCalculated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HumanModInitial value)? initial,
    TResult? Function(HumanModCalculated value)? calculated,
    TResult? Function(HumanModNotCalculated value)? notCalculated,
  }) {
    return notCalculated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HumanModInitial value)? initial,
    TResult Function(HumanModCalculated value)? calculated,
    TResult Function(HumanModNotCalculated value)? notCalculated,
    required TResult orElse(),
  }) {
    if (notCalculated != null) {
      return notCalculated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HumanModNotCalculatedImplToJson(
      this,
    );
  }
}

abstract class HumanModNotCalculated implements HumanModState {
  const factory HumanModNotCalculated() = _$HumanModNotCalculatedImpl;

  factory HumanModNotCalculated.fromJson(
    Map<String, dynamic> json,
  ) = _$HumanModNotCalculatedImpl.fromJson;
}
