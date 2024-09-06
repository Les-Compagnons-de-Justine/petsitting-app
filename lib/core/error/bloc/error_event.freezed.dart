// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppError error) errorOccurred,
    required TResult Function(String message) errorMessageOccurred,
    required TResult Function() clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppError error)? errorOccurred,
    TResult? Function(String message)? errorMessageOccurred,
    TResult? Function()? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppError error)? errorOccurred,
    TResult Function(String message)? errorMessageOccurred,
    TResult Function()? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorOccurred value) errorOccurred,
    required TResult Function(ErrorMessageOccurred value) errorMessageOccurred,
    required TResult Function(ClearError value) clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorOccurred value)? errorOccurred,
    TResult? Function(ErrorMessageOccurred value)? errorMessageOccurred,
    TResult? Function(ClearError value)? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorOccurred value)? errorOccurred,
    TResult Function(ErrorMessageOccurred value)? errorMessageOccurred,
    TResult Function(ClearError value)? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorEventCopyWith<$Res> {
  factory $ErrorEventCopyWith(
          ErrorEvent value, $Res Function(ErrorEvent) then) =
      _$ErrorEventCopyWithImpl<$Res, ErrorEvent>;
}

/// @nodoc
class _$ErrorEventCopyWithImpl<$Res, $Val extends ErrorEvent>
    implements $ErrorEventCopyWith<$Res> {
  _$ErrorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ErrorOccurredImplCopyWith<$Res> {
  factory _$$ErrorOccurredImplCopyWith(
          _$ErrorOccurredImpl value, $Res Function(_$ErrorOccurredImpl) then) =
      __$$ErrorOccurredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$ErrorOccurredImplCopyWithImpl<$Res>
    extends _$ErrorEventCopyWithImpl<$Res, _$ErrorOccurredImpl>
    implements _$$ErrorOccurredImplCopyWith<$Res> {
  __$$ErrorOccurredImplCopyWithImpl(
      _$ErrorOccurredImpl _value, $Res Function(_$ErrorOccurredImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorOccurredImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$ErrorOccurredImpl implements ErrorOccurred {
  const _$ErrorOccurredImpl(this.error);

  @override
  final AppError error;

  @override
  String toString() {
    return 'ErrorEvent.errorOccurred(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorOccurredImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ErrorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorOccurredImplCopyWith<_$ErrorOccurredImpl> get copyWith =>
      __$$ErrorOccurredImplCopyWithImpl<_$ErrorOccurredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppError error) errorOccurred,
    required TResult Function(String message) errorMessageOccurred,
    required TResult Function() clearError,
  }) {
    return errorOccurred(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppError error)? errorOccurred,
    TResult? Function(String message)? errorMessageOccurred,
    TResult? Function()? clearError,
  }) {
    return errorOccurred?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppError error)? errorOccurred,
    TResult Function(String message)? errorMessageOccurred,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (errorOccurred != null) {
      return errorOccurred(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorOccurred value) errorOccurred,
    required TResult Function(ErrorMessageOccurred value) errorMessageOccurred,
    required TResult Function(ClearError value) clearError,
  }) {
    return errorOccurred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorOccurred value)? errorOccurred,
    TResult? Function(ErrorMessageOccurred value)? errorMessageOccurred,
    TResult? Function(ClearError value)? clearError,
  }) {
    return errorOccurred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorOccurred value)? errorOccurred,
    TResult Function(ErrorMessageOccurred value)? errorMessageOccurred,
    TResult Function(ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (errorOccurred != null) {
      return errorOccurred(this);
    }
    return orElse();
  }
}

abstract class ErrorOccurred implements ErrorEvent {
  const factory ErrorOccurred(final AppError error) = _$ErrorOccurredImpl;

  AppError get error;

  /// Create a copy of ErrorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorOccurredImplCopyWith<_$ErrorOccurredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMessageOccurredImplCopyWith<$Res> {
  factory _$$ErrorMessageOccurredImplCopyWith(_$ErrorMessageOccurredImpl value,
          $Res Function(_$ErrorMessageOccurredImpl) then) =
      __$$ErrorMessageOccurredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorMessageOccurredImplCopyWithImpl<$Res>
    extends _$ErrorEventCopyWithImpl<$Res, _$ErrorMessageOccurredImpl>
    implements _$$ErrorMessageOccurredImplCopyWith<$Res> {
  __$$ErrorMessageOccurredImplCopyWithImpl(_$ErrorMessageOccurredImpl _value,
      $Res Function(_$ErrorMessageOccurredImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorMessageOccurredImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMessageOccurredImpl implements ErrorMessageOccurred {
  const _$ErrorMessageOccurredImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ErrorEvent.errorMessageOccurred(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMessageOccurredImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ErrorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageOccurredImplCopyWith<_$ErrorMessageOccurredImpl>
      get copyWith =>
          __$$ErrorMessageOccurredImplCopyWithImpl<_$ErrorMessageOccurredImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppError error) errorOccurred,
    required TResult Function(String message) errorMessageOccurred,
    required TResult Function() clearError,
  }) {
    return errorMessageOccurred(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppError error)? errorOccurred,
    TResult? Function(String message)? errorMessageOccurred,
    TResult? Function()? clearError,
  }) {
    return errorMessageOccurred?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppError error)? errorOccurred,
    TResult Function(String message)? errorMessageOccurred,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (errorMessageOccurred != null) {
      return errorMessageOccurred(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorOccurred value) errorOccurred,
    required TResult Function(ErrorMessageOccurred value) errorMessageOccurred,
    required TResult Function(ClearError value) clearError,
  }) {
    return errorMessageOccurred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorOccurred value)? errorOccurred,
    TResult? Function(ErrorMessageOccurred value)? errorMessageOccurred,
    TResult? Function(ClearError value)? clearError,
  }) {
    return errorMessageOccurred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorOccurred value)? errorOccurred,
    TResult Function(ErrorMessageOccurred value)? errorMessageOccurred,
    TResult Function(ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (errorMessageOccurred != null) {
      return errorMessageOccurred(this);
    }
    return orElse();
  }
}

abstract class ErrorMessageOccurred implements ErrorEvent {
  const factory ErrorMessageOccurred(final String message) =
      _$ErrorMessageOccurredImpl;

  String get message;

  /// Create a copy of ErrorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMessageOccurredImplCopyWith<_$ErrorMessageOccurredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearErrorImplCopyWith<$Res> {
  factory _$$ClearErrorImplCopyWith(
          _$ClearErrorImpl value, $Res Function(_$ClearErrorImpl) then) =
      __$$ClearErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorImplCopyWithImpl<$Res>
    extends _$ErrorEventCopyWithImpl<$Res, _$ClearErrorImpl>
    implements _$$ClearErrorImplCopyWith<$Res> {
  __$$ClearErrorImplCopyWithImpl(
      _$ClearErrorImpl _value, $Res Function(_$ClearErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearErrorImpl implements ClearError {
  const _$ClearErrorImpl();

  @override
  String toString() {
    return 'ErrorEvent.clearError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppError error) errorOccurred,
    required TResult Function(String message) errorMessageOccurred,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppError error)? errorOccurred,
    TResult? Function(String message)? errorMessageOccurred,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppError error)? errorOccurred,
    TResult Function(String message)? errorMessageOccurred,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorOccurred value) errorOccurred,
    required TResult Function(ErrorMessageOccurred value) errorMessageOccurred,
    required TResult Function(ClearError value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorOccurred value)? errorOccurred,
    TResult? Function(ErrorMessageOccurred value)? errorMessageOccurred,
    TResult? Function(ClearError value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorOccurred value)? errorOccurred,
    TResult Function(ErrorMessageOccurred value)? errorMessageOccurred,
    TResult Function(ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class ClearError implements ErrorEvent {
  const factory ClearError() = _$ClearErrorImpl;
}
