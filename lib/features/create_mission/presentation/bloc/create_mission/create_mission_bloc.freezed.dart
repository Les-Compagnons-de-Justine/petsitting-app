// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_mission_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateMissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MissionCreation missionCreation) createMission,
    required TResult Function(MissionCreation missionCreation)
        updateInformation,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MissionCreation missionCreation)? createMission,
    TResult? Function(MissionCreation missionCreation)? updateInformation,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MissionCreation missionCreation)? createMission,
    TResult Function(MissionCreation missionCreation)? updateInformation,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateMission value) createMission,
    required TResult Function(_UpdateInformation value) updateInformation,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateMission value)? createMission,
    TResult? Function(_UpdateInformation value)? updateInformation,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMission value)? createMission,
    TResult Function(_UpdateInformation value)? updateInformation,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMissionEventCopyWith<$Res> {
  factory $CreateMissionEventCopyWith(
          CreateMissionEvent value, $Res Function(CreateMissionEvent) then) =
      _$CreateMissionEventCopyWithImpl<$Res, CreateMissionEvent>;
}

/// @nodoc
class _$CreateMissionEventCopyWithImpl<$Res, $Val extends CreateMissionEvent>
    implements $CreateMissionEventCopyWith<$Res> {
  _$CreateMissionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateMissionImplCopyWith<$Res> {
  factory _$$CreateMissionImplCopyWith(
          _$CreateMissionImpl value, $Res Function(_$CreateMissionImpl) then) =
      __$$CreateMissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MissionCreation missionCreation});

  $MissionCreationCopyWith<$Res> get missionCreation;
}

/// @nodoc
class __$$CreateMissionImplCopyWithImpl<$Res>
    extends _$CreateMissionEventCopyWithImpl<$Res, _$CreateMissionImpl>
    implements _$$CreateMissionImplCopyWith<$Res> {
  __$$CreateMissionImplCopyWithImpl(
      _$CreateMissionImpl _value, $Res Function(_$CreateMissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionCreation = null,
  }) {
    return _then(_$CreateMissionImpl(
      null == missionCreation
          ? _value.missionCreation
          : missionCreation // ignore: cast_nullable_to_non_nullable
              as MissionCreation,
    ));
  }

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MissionCreationCopyWith<$Res> get missionCreation {
    return $MissionCreationCopyWith<$Res>(_value.missionCreation, (value) {
      return _then(_value.copyWith(missionCreation: value));
    });
  }
}

/// @nodoc

class _$CreateMissionImpl implements _CreateMission {
  const _$CreateMissionImpl(this.missionCreation);

  @override
  final MissionCreation missionCreation;

  @override
  String toString() {
    return 'CreateMissionEvent.createMission(missionCreation: $missionCreation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMissionImpl &&
            (identical(other.missionCreation, missionCreation) ||
                other.missionCreation == missionCreation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, missionCreation);

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMissionImplCopyWith<_$CreateMissionImpl> get copyWith =>
      __$$CreateMissionImplCopyWithImpl<_$CreateMissionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MissionCreation missionCreation) createMission,
    required TResult Function(MissionCreation missionCreation)
        updateInformation,
    required TResult Function() reset,
  }) {
    return createMission(missionCreation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MissionCreation missionCreation)? createMission,
    TResult? Function(MissionCreation missionCreation)? updateInformation,
    TResult? Function()? reset,
  }) {
    return createMission?.call(missionCreation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MissionCreation missionCreation)? createMission,
    TResult Function(MissionCreation missionCreation)? updateInformation,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (createMission != null) {
      return createMission(missionCreation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateMission value) createMission,
    required TResult Function(_UpdateInformation value) updateInformation,
    required TResult Function(_Reset value) reset,
  }) {
    return createMission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateMission value)? createMission,
    TResult? Function(_UpdateInformation value)? updateInformation,
    TResult? Function(_Reset value)? reset,
  }) {
    return createMission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMission value)? createMission,
    TResult Function(_UpdateInformation value)? updateInformation,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (createMission != null) {
      return createMission(this);
    }
    return orElse();
  }
}

abstract class _CreateMission implements CreateMissionEvent {
  const factory _CreateMission(final MissionCreation missionCreation) =
      _$CreateMissionImpl;

  MissionCreation get missionCreation;

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMissionImplCopyWith<_$CreateMissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInformationImplCopyWith<$Res> {
  factory _$$UpdateInformationImplCopyWith(_$UpdateInformationImpl value,
          $Res Function(_$UpdateInformationImpl) then) =
      __$$UpdateInformationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MissionCreation missionCreation});

  $MissionCreationCopyWith<$Res> get missionCreation;
}

/// @nodoc
class __$$UpdateInformationImplCopyWithImpl<$Res>
    extends _$CreateMissionEventCopyWithImpl<$Res, _$UpdateInformationImpl>
    implements _$$UpdateInformationImplCopyWith<$Res> {
  __$$UpdateInformationImplCopyWithImpl(_$UpdateInformationImpl _value,
      $Res Function(_$UpdateInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionCreation = null,
  }) {
    return _then(_$UpdateInformationImpl(
      null == missionCreation
          ? _value.missionCreation
          : missionCreation // ignore: cast_nullable_to_non_nullable
              as MissionCreation,
    ));
  }

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MissionCreationCopyWith<$Res> get missionCreation {
    return $MissionCreationCopyWith<$Res>(_value.missionCreation, (value) {
      return _then(_value.copyWith(missionCreation: value));
    });
  }
}

/// @nodoc

class _$UpdateInformationImpl implements _UpdateInformation {
  const _$UpdateInformationImpl(this.missionCreation);

  @override
  final MissionCreation missionCreation;

  @override
  String toString() {
    return 'CreateMissionEvent.updateInformation(missionCreation: $missionCreation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInformationImpl &&
            (identical(other.missionCreation, missionCreation) ||
                other.missionCreation == missionCreation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, missionCreation);

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInformationImplCopyWith<_$UpdateInformationImpl> get copyWith =>
      __$$UpdateInformationImplCopyWithImpl<_$UpdateInformationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MissionCreation missionCreation) createMission,
    required TResult Function(MissionCreation missionCreation)
        updateInformation,
    required TResult Function() reset,
  }) {
    return updateInformation(missionCreation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MissionCreation missionCreation)? createMission,
    TResult? Function(MissionCreation missionCreation)? updateInformation,
    TResult? Function()? reset,
  }) {
    return updateInformation?.call(missionCreation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MissionCreation missionCreation)? createMission,
    TResult Function(MissionCreation missionCreation)? updateInformation,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateInformation != null) {
      return updateInformation(missionCreation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateMission value) createMission,
    required TResult Function(_UpdateInformation value) updateInformation,
    required TResult Function(_Reset value) reset,
  }) {
    return updateInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateMission value)? createMission,
    TResult? Function(_UpdateInformation value)? updateInformation,
    TResult? Function(_Reset value)? reset,
  }) {
    return updateInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMission value)? createMission,
    TResult Function(_UpdateInformation value)? updateInformation,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (updateInformation != null) {
      return updateInformation(this);
    }
    return orElse();
  }
}

abstract class _UpdateInformation implements CreateMissionEvent {
  const factory _UpdateInformation(final MissionCreation missionCreation) =
      _$UpdateInformationImpl;

  MissionCreation get missionCreation;

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInformationImplCopyWith<_$UpdateInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$CreateMissionEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMissionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'CreateMissionEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MissionCreation missionCreation) createMission,
    required TResult Function(MissionCreation missionCreation)
        updateInformation,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MissionCreation missionCreation)? createMission,
    TResult? Function(MissionCreation missionCreation)? updateInformation,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MissionCreation missionCreation)? createMission,
    TResult Function(MissionCreation missionCreation)? updateInformation,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateMission value) createMission,
    required TResult Function(_UpdateInformation value) updateInformation,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateMission value)? createMission,
    TResult? Function(_UpdateInformation value)? updateInformation,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMission value)? createMission,
    TResult Function(_UpdateInformation value)? updateInformation,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements CreateMissionEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$CreateMissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MissionCreation missionCreation) editing,
    required TResult Function() loading,
    required TResult Function(MissionDTO mission) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MissionCreation missionCreation)? editing,
    TResult? Function()? loading,
    TResult? Function(MissionDTO mission)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MissionCreation missionCreation)? editing,
    TResult Function()? loading,
    TResult Function(MissionDTO mission)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMissionStateCopyWith<$Res> {
  factory $CreateMissionStateCopyWith(
          CreateMissionState value, $Res Function(CreateMissionState) then) =
      _$CreateMissionStateCopyWithImpl<$Res, CreateMissionState>;
}

/// @nodoc
class _$CreateMissionStateCopyWithImpl<$Res, $Val extends CreateMissionState>
    implements $CreateMissionStateCopyWith<$Res> {
  _$CreateMissionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateMissionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateMissionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MissionCreation missionCreation) editing,
    required TResult Function() loading,
    required TResult Function(MissionDTO mission) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MissionCreation missionCreation)? editing,
    TResult? Function()? loading,
    TResult? Function(MissionDTO mission)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MissionCreation missionCreation)? editing,
    TResult Function()? loading,
    TResult Function(MissionDTO mission)? success,
    TResult Function(String error)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateMissionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EditingImplCopyWith<$Res> {
  factory _$$EditingImplCopyWith(
          _$EditingImpl value, $Res Function(_$EditingImpl) then) =
      __$$EditingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MissionCreation missionCreation});

  $MissionCreationCopyWith<$Res> get missionCreation;
}

/// @nodoc
class __$$EditingImplCopyWithImpl<$Res>
    extends _$CreateMissionStateCopyWithImpl<$Res, _$EditingImpl>
    implements _$$EditingImplCopyWith<$Res> {
  __$$EditingImplCopyWithImpl(
      _$EditingImpl _value, $Res Function(_$EditingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionCreation = null,
  }) {
    return _then(_$EditingImpl(
      null == missionCreation
          ? _value.missionCreation
          : missionCreation // ignore: cast_nullable_to_non_nullable
              as MissionCreation,
    ));
  }

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MissionCreationCopyWith<$Res> get missionCreation {
    return $MissionCreationCopyWith<$Res>(_value.missionCreation, (value) {
      return _then(_value.copyWith(missionCreation: value));
    });
  }
}

/// @nodoc

class _$EditingImpl implements _Editing {
  const _$EditingImpl(this.missionCreation);

  @override
  final MissionCreation missionCreation;

  @override
  String toString() {
    return 'CreateMissionState.editing(missionCreation: $missionCreation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditingImpl &&
            (identical(other.missionCreation, missionCreation) ||
                other.missionCreation == missionCreation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, missionCreation);

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditingImplCopyWith<_$EditingImpl> get copyWith =>
      __$$EditingImplCopyWithImpl<_$EditingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MissionCreation missionCreation) editing,
    required TResult Function() loading,
    required TResult Function(MissionDTO mission) success,
    required TResult Function(String error) failure,
  }) {
    return editing(missionCreation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MissionCreation missionCreation)? editing,
    TResult? Function()? loading,
    TResult? Function(MissionDTO mission)? success,
    TResult? Function(String error)? failure,
  }) {
    return editing?.call(missionCreation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MissionCreation missionCreation)? editing,
    TResult Function()? loading,
    TResult Function(MissionDTO mission)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(missionCreation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements CreateMissionState {
  const factory _Editing(final MissionCreation missionCreation) = _$EditingImpl;

  MissionCreation get missionCreation;

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditingImplCopyWith<_$EditingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CreateMissionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CreateMissionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MissionCreation missionCreation) editing,
    required TResult Function() loading,
    required TResult Function(MissionDTO mission) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MissionCreation missionCreation)? editing,
    TResult? Function()? loading,
    TResult? Function(MissionDTO mission)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MissionCreation missionCreation)? editing,
    TResult Function()? loading,
    TResult Function(MissionDTO mission)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreateMissionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MissionDTO mission});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CreateMissionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mission = null,
  }) {
    return _then(_$SuccessImpl(
      null == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as MissionDTO,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.mission);

  @override
  final MissionDTO mission;

  @override
  String toString() {
    return 'CreateMissionState.success(mission: $mission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.mission, mission) || other.mission == mission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mission);

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MissionCreation missionCreation) editing,
    required TResult Function() loading,
    required TResult Function(MissionDTO mission) success,
    required TResult Function(String error) failure,
  }) {
    return success(mission);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MissionCreation missionCreation)? editing,
    TResult? Function()? loading,
    TResult? Function(MissionDTO mission)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(mission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MissionCreation missionCreation)? editing,
    TResult Function()? loading,
    TResult Function(MissionDTO mission)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(mission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CreateMissionState {
  const factory _Success(final MissionDTO mission) = _$SuccessImpl;

  MissionDTO get mission;

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CreateMissionStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CreateMissionState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MissionCreation missionCreation) editing,
    required TResult Function() loading,
    required TResult Function(MissionDTO mission) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MissionCreation missionCreation)? editing,
    TResult? Function()? loading,
    TResult? Function(MissionDTO mission)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MissionCreation missionCreation)? editing,
    TResult Function()? loading,
    TResult Function(MissionDTO mission)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CreateMissionState {
  const factory _Failure(final String error) = _$FailureImpl;

  String get error;

  /// Create a copy of CreateMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
