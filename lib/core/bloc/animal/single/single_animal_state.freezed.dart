// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_animal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SingleAnimalState _$SingleAnimalStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return Initial.fromJson(json);
    case 'loading':
      return Loading.fromJson(json);
    case 'added':
      return Added.fromJson(json);
    case 'updated':
      return Updated.fromJson(json);
    case 'deleted':
      return Deleted.fromJson(json);
    case 'error':
      return Error.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SingleAnimalState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SingleAnimalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnimalDTO animal) added,
    required TResult Function(AnimalDTO animal) updated,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnimalDTO animal)? added,
    TResult? Function(AnimalDTO animal)? updated,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnimalDTO animal)? added,
    TResult Function(AnimalDTO animal)? updated,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Added value)? added,
    TResult? Function(Updated value)? updated,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SingleAnimalState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleAnimalStateCopyWith<$Res> {
  factory $SingleAnimalStateCopyWith(
          SingleAnimalState value, $Res Function(SingleAnimalState) then) =
      _$SingleAnimalStateCopyWithImpl<$Res, SingleAnimalState>;
}

/// @nodoc
class _$SingleAnimalStateCopyWithImpl<$Res, $Val extends SingleAnimalState>
    implements $SingleAnimalStateCopyWith<$Res> {
  _$SingleAnimalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleAnimalState
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
    extends _$SingleAnimalStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl implements Initial {
  const _$InitialImpl({final String? $type}) : $type = $type ?? 'initial';

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SingleAnimalState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnimalDTO animal) added,
    required TResult Function(AnimalDTO animal) updated,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnimalDTO animal)? added,
    TResult? Function(AnimalDTO animal)? updated,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnimalDTO animal)? added,
    TResult Function(AnimalDTO animal)? updated,
    TResult Function()? deleted,
    TResult Function(String message)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Added value)? added,
    TResult? Function(Updated value)? updated,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class Initial implements SingleAnimalState {
  const factory Initial() = _$InitialImpl;

  factory Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SingleAnimalStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LoadingImpl implements Loading {
  const _$LoadingImpl({final String? $type}) : $type = $type ?? 'loading';

  factory _$LoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SingleAnimalState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnimalDTO animal) added,
    required TResult Function(AnimalDTO animal) updated,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnimalDTO animal)? added,
    TResult? Function(AnimalDTO animal)? updated,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnimalDTO animal)? added,
    TResult Function(AnimalDTO animal)? updated,
    TResult Function()? deleted,
    TResult Function(String message)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Added value)? added,
    TResult? Function(Updated value)? updated,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingImplToJson(
      this,
    );
  }
}

abstract class Loading implements SingleAnimalState {
  const factory Loading() = _$LoadingImpl;

  factory Loading.fromJson(Map<String, dynamic> json) = _$LoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnimalDTO animal});
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$SingleAnimalStateCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animal = null,
  }) {
    return _then(_$AddedImpl(
      null == animal
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as AnimalDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddedImpl implements Added {
  const _$AddedImpl(this.animal, {final String? $type})
      : $type = $type ?? 'added';

  factory _$AddedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddedImplFromJson(json);

  @override
  final AnimalDTO animal;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SingleAnimalState.added(animal: $animal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImpl &&
            (identical(other.animal, animal) || other.animal == animal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, animal);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnimalDTO animal) added,
    required TResult Function(AnimalDTO animal) updated,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return added(animal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnimalDTO animal)? added,
    TResult? Function(AnimalDTO animal)? updated,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return added?.call(animal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnimalDTO animal)? added,
    TResult Function(AnimalDTO animal)? updated,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(animal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Error value) error,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Added value)? added,
    TResult? Function(Updated value)? updated,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Error value)? error,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddedImplToJson(
      this,
    );
  }
}

abstract class Added implements SingleAnimalState {
  const factory Added(final AnimalDTO animal) = _$AddedImpl;

  factory Added.fromJson(Map<String, dynamic> json) = _$AddedImpl.fromJson;

  AnimalDTO get animal;

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnimalDTO animal});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$SingleAnimalStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animal = null,
  }) {
    return _then(_$UpdatedImpl(
      null == animal
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as AnimalDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatedImpl implements Updated {
  const _$UpdatedImpl(this.animal, {final String? $type})
      : $type = $type ?? 'updated';

  factory _$UpdatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatedImplFromJson(json);

  @override
  final AnimalDTO animal;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SingleAnimalState.updated(animal: $animal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.animal, animal) || other.animal == animal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, animal);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnimalDTO animal) added,
    required TResult Function(AnimalDTO animal) updated,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return updated(animal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnimalDTO animal)? added,
    TResult? Function(AnimalDTO animal)? updated,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return updated?.call(animal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnimalDTO animal)? added,
    TResult Function(AnimalDTO animal)? updated,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(animal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Error value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Added value)? added,
    TResult? Function(Updated value)? updated,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Error value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatedImplToJson(
      this,
    );
  }
}

abstract class Updated implements SingleAnimalState {
  const factory Updated(final AnimalDTO animal) = _$UpdatedImpl;

  factory Updated.fromJson(Map<String, dynamic> json) = _$UpdatedImpl.fromJson;

  AnimalDTO get animal;

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$SingleAnimalStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$DeletedImpl implements Deleted {
  const _$DeletedImpl({final String? $type}) : $type = $type ?? 'deleted';

  factory _$DeletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeletedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SingleAnimalState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnimalDTO animal) added,
    required TResult Function(AnimalDTO animal) updated,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnimalDTO animal)? added,
    TResult? Function(AnimalDTO animal)? updated,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnimalDTO animal)? added,
    TResult Function(AnimalDTO animal)? updated,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Error value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Added value)? added,
    TResult? Function(Updated value)? updated,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Error value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletedImplToJson(
      this,
    );
  }
}

abstract class Deleted implements SingleAnimalState {
  const factory Deleted() = _$DeletedImpl;

  factory Deleted.fromJson(Map<String, dynamic> json) = _$DeletedImpl.fromJson;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SingleAnimalStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SingleAnimalState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnimalDTO animal) added,
    required TResult Function(AnimalDTO animal) updated,
    required TResult Function() deleted,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnimalDTO animal)? added,
    TResult? Function(AnimalDTO animal)? updated,
    TResult? Function()? deleted,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnimalDTO animal)? added,
    TResult Function(AnimalDTO animal)? updated,
    TResult Function()? deleted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Added value)? added,
    TResult? Function(Updated value)? updated,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorImplToJson(
      this,
    );
  }
}

abstract class Error implements SingleAnimalState {
  const factory Error(final String message) = _$ErrorImpl;

  factory Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  String get message;

  /// Create a copy of SingleAnimalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
