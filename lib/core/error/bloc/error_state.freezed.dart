// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function(AppError error) hasError,
    required TResult Function(String message) hasErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function(AppError error)? hasError,
    TResult? Function(String message)? hasErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function(AppError error)? hasError,
    TResult Function(String message)? hasErrorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(HasError value) hasError,
    required TResult Function(HasErrorMessage value) hasErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(HasError value)? hasError,
    TResult? Function(HasErrorMessage value)? hasErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(HasError value)? hasError,
    TResult Function(HasErrorMessage value)? hasErrorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res, ErrorState>;
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res, $Val extends ErrorState>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoErrorImplCopyWith<$Res> {
  factory _$$NoErrorImplCopyWith(
          _$NoErrorImpl value, $Res Function(_$NoErrorImpl) then) =
      __$$NoErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoErrorImplCopyWithImpl<$Res>
    extends _$ErrorStateCopyWithImpl<$Res, _$NoErrorImpl>
    implements _$$NoErrorImplCopyWith<$Res> {
  __$$NoErrorImplCopyWithImpl(
      _$NoErrorImpl _value, $Res Function(_$NoErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoErrorImpl implements NoError {
  const _$NoErrorImpl();

  @override
  String toString() {
    return 'ErrorState.noError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function(AppError error) hasError,
    required TResult Function(String message) hasErrorMessage,
  }) {
    return noError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function(AppError error)? hasError,
    TResult? Function(String message)? hasErrorMessage,
  }) {
    return noError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function(AppError error)? hasError,
    TResult Function(String message)? hasErrorMessage,
    required TResult orElse(),
  }) {
    if (noError != null) {
      return noError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(HasError value) hasError,
    required TResult Function(HasErrorMessage value) hasErrorMessage,
  }) {
    return noError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(HasError value)? hasError,
    TResult? Function(HasErrorMessage value)? hasErrorMessage,
  }) {
    return noError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(HasError value)? hasError,
    TResult Function(HasErrorMessage value)? hasErrorMessage,
    required TResult orElse(),
  }) {
    if (noError != null) {
      return noError(this);
    }
    return orElse();
  }
}

abstract class NoError implements ErrorState {
  const factory NoError() = _$NoErrorImpl;
}

/// @nodoc
abstract class _$$HasErrorImplCopyWith<$Res> {
  factory _$$HasErrorImplCopyWith(
          _$HasErrorImpl value, $Res Function(_$HasErrorImpl) then) =
      __$$HasErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$HasErrorImplCopyWithImpl<$Res>
    extends _$ErrorStateCopyWithImpl<$Res, _$HasErrorImpl>
    implements _$$HasErrorImplCopyWith<$Res> {
  __$$HasErrorImplCopyWithImpl(
      _$HasErrorImpl _value, $Res Function(_$HasErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HasErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$HasErrorImpl implements HasError {
  const _$HasErrorImpl(this.error);

  @override
  final AppError error;

  @override
  String toString() {
    return 'ErrorState.hasError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ErrorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HasErrorImplCopyWith<_$HasErrorImpl> get copyWith =>
      __$$HasErrorImplCopyWithImpl<_$HasErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function(AppError error) hasError,
    required TResult Function(String message) hasErrorMessage,
  }) {
    return hasError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function(AppError error)? hasError,
    TResult? Function(String message)? hasErrorMessage,
  }) {
    return hasError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function(AppError error)? hasError,
    TResult Function(String message)? hasErrorMessage,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(HasError value) hasError,
    required TResult Function(HasErrorMessage value) hasErrorMessage,
  }) {
    return hasError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(HasError value)? hasError,
    TResult? Function(HasErrorMessage value)? hasErrorMessage,
  }) {
    return hasError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(HasError value)? hasError,
    TResult Function(HasErrorMessage value)? hasErrorMessage,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(this);
    }
    return orElse();
  }
}

abstract class HasError implements ErrorState {
  const factory HasError(final AppError error) = _$HasErrorImpl;

  AppError get error;

  /// Create a copy of ErrorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HasErrorImplCopyWith<_$HasErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HasErrorMessageImplCopyWith<$Res> {
  factory _$$HasErrorMessageImplCopyWith(_$HasErrorMessageImpl value,
          $Res Function(_$HasErrorMessageImpl) then) =
      __$$HasErrorMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HasErrorMessageImplCopyWithImpl<$Res>
    extends _$ErrorStateCopyWithImpl<$Res, _$HasErrorMessageImpl>
    implements _$$HasErrorMessageImplCopyWith<$Res> {
  __$$HasErrorMessageImplCopyWithImpl(
      _$HasErrorMessageImpl _value, $Res Function(_$HasErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HasErrorMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HasErrorMessageImpl implements HasErrorMessage {
  const _$HasErrorMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ErrorState.hasErrorMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasErrorMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ErrorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HasErrorMessageImplCopyWith<_$HasErrorMessageImpl> get copyWith =>
      __$$HasErrorMessageImplCopyWithImpl<_$HasErrorMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function(AppError error) hasError,
    required TResult Function(String message) hasErrorMessage,
  }) {
    return hasErrorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function(AppError error)? hasError,
    TResult? Function(String message)? hasErrorMessage,
  }) {
    return hasErrorMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function(AppError error)? hasError,
    TResult Function(String message)? hasErrorMessage,
    required TResult orElse(),
  }) {
    if (hasErrorMessage != null) {
      return hasErrorMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(HasError value) hasError,
    required TResult Function(HasErrorMessage value) hasErrorMessage,
  }) {
    return hasErrorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(HasError value)? hasError,
    TResult? Function(HasErrorMessage value)? hasErrorMessage,
  }) {
    return hasErrorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(HasError value)? hasError,
    TResult Function(HasErrorMessage value)? hasErrorMessage,
    required TResult orElse(),
  }) {
    if (hasErrorMessage != null) {
      return hasErrorMessage(this);
    }
    return orElse();
  }
}

abstract class HasErrorMessage implements ErrorState {
  const factory HasErrorMessage(final String message) = _$HasErrorMessageImpl;

  String get message;

  /// Create a copy of ErrorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HasErrorMessageImplCopyWith<_$HasErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
