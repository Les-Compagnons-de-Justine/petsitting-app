// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return Initial.fromJson(json);
    case 'checking':
      return Checking.fromJson(json);
    case 'emailUnverified':
      return EmailUnverified.fromJson(json);
    case 'unauthenticated':
      return Unauthenticated.fromJson(json);
    case 'partiallyAuthenticated':
      return PartiallyAuthenticated.fromJson(json);
    case 'authenticated':
      return Authenticated.fromJson(json);
    case 'createUserError':
      return CreateUserError.fromJson(json);
    case 'loading':
      return Loading.fromJson(json);
    case 'error':
      return Error.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
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
    return 'AuthState.initial()';
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
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
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
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
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

abstract class Initial implements AuthState {
  const factory Initial() = _$InitialImpl;

  factory Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;
}

/// @nodoc
abstract class _$$CheckingImplCopyWith<$Res> {
  factory _$$CheckingImplCopyWith(
          _$CheckingImpl value, $Res Function(_$CheckingImpl) then) =
      __$$CheckingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CheckingImpl>
    implements _$$CheckingImplCopyWith<$Res> {
  __$$CheckingImplCopyWithImpl(
      _$CheckingImpl _value, $Res Function(_$CheckingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CheckingImpl implements Checking {
  const _$CheckingImpl({final String? $type}) : $type = $type ?? 'checking';

  factory _$CheckingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.checking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckingImplToJson(
      this,
    );
  }
}

abstract class Checking implements AuthState {
  const factory Checking() = _$CheckingImpl;

  factory Checking.fromJson(Map<String, dynamic> json) =
      _$CheckingImpl.fromJson;
}

/// @nodoc
abstract class _$$EmailUnverifiedImplCopyWith<$Res> {
  factory _$$EmailUnverifiedImplCopyWith(_$EmailUnverifiedImpl value,
          $Res Function(_$EmailUnverifiedImpl) then) =
      __$$EmailUnverifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailUnverifiedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$EmailUnverifiedImpl>
    implements _$$EmailUnverifiedImplCopyWith<$Res> {
  __$$EmailUnverifiedImplCopyWithImpl(
      _$EmailUnverifiedImpl _value, $Res Function(_$EmailUnverifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EmailUnverifiedImpl implements EmailUnverified {
  const _$EmailUnverifiedImpl({final String? $type})
      : $type = $type ?? 'emailUnverified';

  factory _$EmailUnverifiedImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailUnverifiedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.emailUnverified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailUnverifiedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return emailUnverified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return emailUnverified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (emailUnverified != null) {
      return emailUnverified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return emailUnverified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return emailUnverified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (emailUnverified != null) {
      return emailUnverified(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailUnverifiedImplToJson(
      this,
    );
  }
}

abstract class EmailUnverified implements AuthState {
  const factory EmailUnverified() = _$EmailUnverifiedImpl;

  factory EmailUnverified.fromJson(Map<String, dynamic> json) =
      _$EmailUnverifiedImpl.fromJson;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl({final String? $type})
      : $type = $type ?? 'unauthenticated';

  factory _$UnauthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnauthenticatedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthenticatedImplToJson(
      this,
    );
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;

  factory Unauthenticated.fromJson(Map<String, dynamic> json) =
      _$UnauthenticatedImpl.fromJson;
}

/// @nodoc
abstract class _$$PartiallyAuthenticatedImplCopyWith<$Res> {
  factory _$$PartiallyAuthenticatedImplCopyWith(
          _$PartiallyAuthenticatedImpl value,
          $Res Function(_$PartiallyAuthenticatedImpl) then) =
      __$$PartiallyAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PartiallyAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PartiallyAuthenticatedImpl>
    implements _$$PartiallyAuthenticatedImplCopyWith<$Res> {
  __$$PartiallyAuthenticatedImplCopyWithImpl(
      _$PartiallyAuthenticatedImpl _value,
      $Res Function(_$PartiallyAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PartiallyAuthenticatedImpl implements PartiallyAuthenticated {
  const _$PartiallyAuthenticatedImpl({final String? $type})
      : $type = $type ?? 'partiallyAuthenticated';

  factory _$PartiallyAuthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartiallyAuthenticatedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.partiallyAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartiallyAuthenticatedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return partiallyAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return partiallyAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (partiallyAuthenticated != null) {
      return partiallyAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return partiallyAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return partiallyAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (partiallyAuthenticated != null) {
      return partiallyAuthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PartiallyAuthenticatedImplToJson(
      this,
    );
  }
}

abstract class PartiallyAuthenticated implements AuthState {
  const factory PartiallyAuthenticated() = _$PartiallyAuthenticatedImpl;

  factory PartiallyAuthenticated.fromJson(Map<String, dynamic> json) =
      _$PartiallyAuthenticatedImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsersUser user});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UsersUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl(this.user, {final String? $type})
      : $type = $type ?? 'authenticated';

  factory _$AuthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedImplFromJson(json);

  @override
  final UsersUser user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedImplToJson(
      this,
    );
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(final UsersUser user) = _$AuthenticatedImpl;

  factory Authenticated.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedImpl.fromJson;

  UsersUser get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserErrorImplCopyWith<$Res> {
  factory _$$CreateUserErrorImplCopyWith(_$CreateUserErrorImpl value,
          $Res Function(_$CreateUserErrorImpl) then) =
      __$$CreateUserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreateUserErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CreateUserErrorImpl>
    implements _$$CreateUserErrorImplCopyWith<$Res> {
  __$$CreateUserErrorImplCopyWithImpl(
      _$CreateUserErrorImpl _value, $Res Function(_$CreateUserErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreateUserErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserErrorImpl implements CreateUserError {
  const _$CreateUserErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'createUserError';

  factory _$CreateUserErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.createUserError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserErrorImplCopyWith<_$CreateUserErrorImpl> get copyWith =>
      __$$CreateUserErrorImplCopyWithImpl<_$CreateUserErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return createUserError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return createUserError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (createUserError != null) {
      return createUserError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return createUserError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return createUserError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (createUserError != null) {
      return createUserError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserErrorImplToJson(
      this,
    );
  }
}

abstract class CreateUserError implements AuthState {
  const factory CreateUserError(final String message) = _$CreateUserErrorImpl;

  factory CreateUserError.fromJson(Map<String, dynamic> json) =
      _$CreateUserErrorImpl.fromJson;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserErrorImplCopyWith<_$CreateUserErrorImpl> get copyWith =>
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
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
    return 'AuthState.loading()';
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
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
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
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
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

abstract class Loading implements AuthState {
  const factory Loading() = _$LoadingImpl;

  factory Loading.fromJson(Map<String, dynamic> json) = _$LoadingImpl.fromJson;
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
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
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
    return 'AuthState.error(message: $message)';
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

  /// Create a copy of AuthState
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
    required TResult Function() checking,
    required TResult Function() emailUnverified,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyAuthenticated,
    required TResult Function(UsersUser user) authenticated,
    required TResult Function(String message) createUserError,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? emailUnverified,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyAuthenticated,
    TResult? Function(UsersUser user)? authenticated,
    TResult? Function(String message)? createUserError,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? emailUnverified,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyAuthenticated,
    TResult Function(UsersUser user)? authenticated,
    TResult Function(String message)? createUserError,
    TResult Function()? loading,
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
    required TResult Function(Checking value) checking,
    required TResult Function(EmailUnverified value) emailUnverified,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(PartiallyAuthenticated value)
        partiallyAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(CreateUserError value) createUserError,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(EmailUnverified value)? emailUnverified,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(CreateUserError value)? createUserError,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(EmailUnverified value)? emailUnverified,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(PartiallyAuthenticated value)? partiallyAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(CreateUserError value)? createUserError,
    TResult Function(Loading value)? loading,
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

abstract class Error implements AuthState {
  const factory Error(final String message) = _$ErrorImpl;

  factory Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
