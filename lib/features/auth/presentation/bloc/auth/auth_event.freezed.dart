// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function(UsersCreateUserRequest user) createAccount,
    required TResult Function(User user) signUp,
    required TResult Function() signOut,
    required TResult Function() checkStatus,
    required TResult Function(User? user) authStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function(UsersCreateUserRequest user)? createAccount,
    TResult? Function(User user)? signUp,
    TResult? Function()? signOut,
    TResult? Function()? checkStatus,
    TResult? Function(User? user)? authStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function(UsersCreateUserRequest user)? createAccount,
    TResult Function(User user)? signUp,
    TResult Function()? signOut,
    TResult Function()? checkStatus,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignIn value) signIn,
    required TResult Function(AuthEventCreateAccount value) createAccount,
    required TResult Function(AuthEventSignUp value) signUp,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventSignIn value)? signIn,
    TResult? Function(AuthEventCreateAccount value)? createAccount,
    TResult? Function(AuthEventSignUp value)? signUp,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignIn value)? signIn,
    TResult Function(AuthEventCreateAccount value)? createAccount,
    TResult Function(AuthEventSignUp value)? signUp,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthEventSignInImplCopyWith<$Res> {
  factory _$$AuthEventSignInImplCopyWith(_$AuthEventSignInImpl value,
          $Res Function(_$AuthEventSignInImpl) then) =
      __$$AuthEventSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthEventSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignInImpl>
    implements _$$AuthEventSignInImplCopyWith<$Res> {
  __$$AuthEventSignInImplCopyWithImpl(
      _$AuthEventSignInImpl _value, $Res Function(_$AuthEventSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthEventSignInImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthEventSignInImpl implements AuthEventSignIn {
  const _$AuthEventSignInImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.signIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventSignInImplCopyWith<_$AuthEventSignInImpl> get copyWith =>
      __$$AuthEventSignInImplCopyWithImpl<_$AuthEventSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function(UsersCreateUserRequest user) createAccount,
    required TResult Function(User user) signUp,
    required TResult Function() signOut,
    required TResult Function() checkStatus,
    required TResult Function(User? user) authStateChanged,
  }) {
    return signIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function(UsersCreateUserRequest user)? createAccount,
    TResult? Function(User user)? signUp,
    TResult? Function()? signOut,
    TResult? Function()? checkStatus,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return signIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function(UsersCreateUserRequest user)? createAccount,
    TResult Function(User user)? signUp,
    TResult Function()? signOut,
    TResult Function()? checkStatus,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignIn value) signIn,
    required TResult Function(AuthEventCreateAccount value) createAccount,
    required TResult Function(AuthEventSignUp value) signUp,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventSignIn value)? signIn,
    TResult? Function(AuthEventCreateAccount value)? createAccount,
    TResult? Function(AuthEventSignUp value)? signUp,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignIn value)? signIn,
    TResult Function(AuthEventCreateAccount value)? createAccount,
    TResult Function(AuthEventSignUp value)? signUp,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignIn implements AuthEvent {
  const factory AuthEventSignIn({required final User user}) =
      _$AuthEventSignInImpl;

  User get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventSignInImplCopyWith<_$AuthEventSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventCreateAccountImplCopyWith<$Res> {
  factory _$$AuthEventCreateAccountImplCopyWith(
          _$AuthEventCreateAccountImpl value,
          $Res Function(_$AuthEventCreateAccountImpl) then) =
      __$$AuthEventCreateAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsersCreateUserRequest user});
}

/// @nodoc
class __$$AuthEventCreateAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventCreateAccountImpl>
    implements _$$AuthEventCreateAccountImplCopyWith<$Res> {
  __$$AuthEventCreateAccountImplCopyWithImpl(
      _$AuthEventCreateAccountImpl _value,
      $Res Function(_$AuthEventCreateAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthEventCreateAccountImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UsersCreateUserRequest,
    ));
  }
}

/// @nodoc

class _$AuthEventCreateAccountImpl implements AuthEventCreateAccount {
  const _$AuthEventCreateAccountImpl({required this.user});

  @override
  final UsersCreateUserRequest user;

  @override
  String toString() {
    return 'AuthEvent.createAccount(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventCreateAccountImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventCreateAccountImplCopyWith<_$AuthEventCreateAccountImpl>
      get copyWith => __$$AuthEventCreateAccountImplCopyWithImpl<
          _$AuthEventCreateAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function(UsersCreateUserRequest user) createAccount,
    required TResult Function(User user) signUp,
    required TResult Function() signOut,
    required TResult Function() checkStatus,
    required TResult Function(User? user) authStateChanged,
  }) {
    return createAccount(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function(UsersCreateUserRequest user)? createAccount,
    TResult? Function(User user)? signUp,
    TResult? Function()? signOut,
    TResult? Function()? checkStatus,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return createAccount?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function(UsersCreateUserRequest user)? createAccount,
    TResult Function(User user)? signUp,
    TResult Function()? signOut,
    TResult Function()? checkStatus,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignIn value) signIn,
    required TResult Function(AuthEventCreateAccount value) createAccount,
    required TResult Function(AuthEventSignUp value) signUp,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventSignIn value)? signIn,
    TResult? Function(AuthEventCreateAccount value)? createAccount,
    TResult? Function(AuthEventSignUp value)? signUp,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignIn value)? signIn,
    TResult Function(AuthEventCreateAccount value)? createAccount,
    TResult Function(AuthEventSignUp value)? signUp,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class AuthEventCreateAccount implements AuthEvent {
  const factory AuthEventCreateAccount(
          {required final UsersCreateUserRequest user}) =
      _$AuthEventCreateAccountImpl;

  UsersCreateUserRequest get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventCreateAccountImplCopyWith<_$AuthEventCreateAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignUpImplCopyWith<$Res> {
  factory _$$AuthEventSignUpImplCopyWith(_$AuthEventSignUpImpl value,
          $Res Function(_$AuthEventSignUpImpl) then) =
      __$$AuthEventSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthEventSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignUpImpl>
    implements _$$AuthEventSignUpImplCopyWith<$Res> {
  __$$AuthEventSignUpImplCopyWithImpl(
      _$AuthEventSignUpImpl _value, $Res Function(_$AuthEventSignUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthEventSignUpImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthEventSignUpImpl implements AuthEventSignUp {
  const _$AuthEventSignUpImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.signUp(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignUpImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventSignUpImplCopyWith<_$AuthEventSignUpImpl> get copyWith =>
      __$$AuthEventSignUpImplCopyWithImpl<_$AuthEventSignUpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function(UsersCreateUserRequest user) createAccount,
    required TResult Function(User user) signUp,
    required TResult Function() signOut,
    required TResult Function() checkStatus,
    required TResult Function(User? user) authStateChanged,
  }) {
    return signUp(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function(UsersCreateUserRequest user)? createAccount,
    TResult? Function(User user)? signUp,
    TResult? Function()? signOut,
    TResult? Function()? checkStatus,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return signUp?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function(UsersCreateUserRequest user)? createAccount,
    TResult Function(User user)? signUp,
    TResult Function()? signOut,
    TResult Function()? checkStatus,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignIn value) signIn,
    required TResult Function(AuthEventCreateAccount value) createAccount,
    required TResult Function(AuthEventSignUp value) signUp,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventSignIn value)? signIn,
    TResult? Function(AuthEventCreateAccount value)? createAccount,
    TResult? Function(AuthEventSignUp value)? signUp,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignIn value)? signIn,
    TResult Function(AuthEventCreateAccount value)? createAccount,
    TResult Function(AuthEventSignUp value)? signUp,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignUp implements AuthEvent {
  const factory AuthEventSignUp({required final User user}) =
      _$AuthEventSignUpImpl;

  User get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventSignUpImplCopyWith<_$AuthEventSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignOutImplCopyWith<$Res> {
  factory _$$AuthEventSignOutImplCopyWith(_$AuthEventSignOutImpl value,
          $Res Function(_$AuthEventSignOutImpl) then) =
      __$$AuthEventSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventSignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignOutImpl>
    implements _$$AuthEventSignOutImplCopyWith<$Res> {
  __$$AuthEventSignOutImplCopyWithImpl(_$AuthEventSignOutImpl _value,
      $Res Function(_$AuthEventSignOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventSignOutImpl implements AuthEventSignOut {
  const _$AuthEventSignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function(UsersCreateUserRequest user) createAccount,
    required TResult Function(User user) signUp,
    required TResult Function() signOut,
    required TResult Function() checkStatus,
    required TResult Function(User? user) authStateChanged,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function(UsersCreateUserRequest user)? createAccount,
    TResult? Function(User user)? signUp,
    TResult? Function()? signOut,
    TResult? Function()? checkStatus,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function(UsersCreateUserRequest user)? createAccount,
    TResult Function(User user)? signUp,
    TResult Function()? signOut,
    TResult Function()? checkStatus,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignIn value) signIn,
    required TResult Function(AuthEventCreateAccount value) createAccount,
    required TResult Function(AuthEventSignUp value) signUp,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventSignIn value)? signIn,
    TResult? Function(AuthEventCreateAccount value)? createAccount,
    TResult? Function(AuthEventSignUp value)? signUp,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignIn value)? signIn,
    TResult Function(AuthEventCreateAccount value)? createAccount,
    TResult Function(AuthEventSignUp value)? signUp,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignOut implements AuthEvent {
  const factory AuthEventSignOut() = _$AuthEventSignOutImpl;
}

/// @nodoc
abstract class _$$AuthEventCheckStatusImplCopyWith<$Res> {
  factory _$$AuthEventCheckStatusImplCopyWith(_$AuthEventCheckStatusImpl value,
          $Res Function(_$AuthEventCheckStatusImpl) then) =
      __$$AuthEventCheckStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventCheckStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventCheckStatusImpl>
    implements _$$AuthEventCheckStatusImplCopyWith<$Res> {
  __$$AuthEventCheckStatusImplCopyWithImpl(_$AuthEventCheckStatusImpl _value,
      $Res Function(_$AuthEventCheckStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventCheckStatusImpl implements AuthEventCheckStatus {
  const _$AuthEventCheckStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventCheckStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function(UsersCreateUserRequest user) createAccount,
    required TResult Function(User user) signUp,
    required TResult Function() signOut,
    required TResult Function() checkStatus,
    required TResult Function(User? user) authStateChanged,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function(UsersCreateUserRequest user)? createAccount,
    TResult? Function(User user)? signUp,
    TResult? Function()? signOut,
    TResult? Function()? checkStatus,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return checkStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function(UsersCreateUserRequest user)? createAccount,
    TResult Function(User user)? signUp,
    TResult Function()? signOut,
    TResult Function()? checkStatus,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignIn value) signIn,
    required TResult Function(AuthEventCreateAccount value) createAccount,
    required TResult Function(AuthEventSignUp value) signUp,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventSignIn value)? signIn,
    TResult? Function(AuthEventCreateAccount value)? createAccount,
    TResult? Function(AuthEventSignUp value)? signUp,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignIn value)? signIn,
    TResult Function(AuthEventCreateAccount value)? createAccount,
    TResult Function(AuthEventSignUp value)? signUp,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class AuthEventCheckStatus implements AuthEvent {
  const factory AuthEventCheckStatus() = _$AuthEventCheckStatusImpl;
}

/// @nodoc
abstract class _$$AuthEventAuthStateChangedImplCopyWith<$Res> {
  factory _$$AuthEventAuthStateChangedImplCopyWith(
          _$AuthEventAuthStateChangedImpl value,
          $Res Function(_$AuthEventAuthStateChangedImpl) then) =
      __$$AuthEventAuthStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$AuthEventAuthStateChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventAuthStateChangedImpl>
    implements _$$AuthEventAuthStateChangedImplCopyWith<$Res> {
  __$$AuthEventAuthStateChangedImplCopyWithImpl(
      _$AuthEventAuthStateChangedImpl _value,
      $Res Function(_$AuthEventAuthStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthEventAuthStateChangedImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthEventAuthStateChangedImpl implements AuthEventAuthStateChanged {
  const _$AuthEventAuthStateChangedImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.authStateChanged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventAuthStateChangedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventAuthStateChangedImplCopyWith<_$AuthEventAuthStateChangedImpl>
      get copyWith => __$$AuthEventAuthStateChangedImplCopyWithImpl<
          _$AuthEventAuthStateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) signIn,
    required TResult Function(UsersCreateUserRequest user) createAccount,
    required TResult Function(User user) signUp,
    required TResult Function() signOut,
    required TResult Function() checkStatus,
    required TResult Function(User? user) authStateChanged,
  }) {
    return authStateChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? signIn,
    TResult? Function(UsersCreateUserRequest user)? createAccount,
    TResult? Function(User user)? signUp,
    TResult? Function()? signOut,
    TResult? Function()? checkStatus,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return authStateChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? signIn,
    TResult Function(UsersCreateUserRequest user)? createAccount,
    TResult Function(User user)? signUp,
    TResult Function()? signOut,
    TResult Function()? checkStatus,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (authStateChanged != null) {
      return authStateChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSignIn value) signIn,
    required TResult Function(AuthEventCreateAccount value) createAccount,
    required TResult Function(AuthEventSignUp value) signUp,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return authStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventSignIn value)? signIn,
    TResult? Function(AuthEventCreateAccount value)? createAccount,
    TResult? Function(AuthEventSignUp value)? signUp,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return authStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSignIn value)? signIn,
    TResult Function(AuthEventCreateAccount value)? createAccount,
    TResult Function(AuthEventSignUp value)? signUp,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (authStateChanged != null) {
      return authStateChanged(this);
    }
    return orElse();
  }
}

abstract class AuthEventAuthStateChanged implements AuthEvent {
  const factory AuthEventAuthStateChanged(final User? user) =
      _$AuthEventAuthStateChangedImpl;

  User? get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventAuthStateChangedImplCopyWith<_$AuthEventAuthStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
