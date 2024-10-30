// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnimalListState {
  AnimalListStatus get status => throw _privateConstructorUsedError;
  List<AnimalWithOwner> get animals => throw _privateConstructorUsedError;

  /// Create a copy of AnimalListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimalListStateCopyWith<AnimalListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalListStateCopyWith<$Res> {
  factory $AnimalListStateCopyWith(
          AnimalListState value, $Res Function(AnimalListState) then) =
      _$AnimalListStateCopyWithImpl<$Res, AnimalListState>;
  @useResult
  $Res call({AnimalListStatus status, List<AnimalWithOwner> animals});
}

/// @nodoc
class _$AnimalListStateCopyWithImpl<$Res, $Val extends AnimalListState>
    implements $AnimalListStateCopyWith<$Res> {
  _$AnimalListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimalListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? animals = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnimalListStatus,
      animals: null == animals
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as List<AnimalWithOwner>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalListStateImplCopyWith<$Res>
    implements $AnimalListStateCopyWith<$Res> {
  factory _$$AnimalListStateImplCopyWith(_$AnimalListStateImpl value,
          $Res Function(_$AnimalListStateImpl) then) =
      __$$AnimalListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnimalListStatus status, List<AnimalWithOwner> animals});
}

/// @nodoc
class __$$AnimalListStateImplCopyWithImpl<$Res>
    extends _$AnimalListStateCopyWithImpl<$Res, _$AnimalListStateImpl>
    implements _$$AnimalListStateImplCopyWith<$Res> {
  __$$AnimalListStateImplCopyWithImpl(
      _$AnimalListStateImpl _value, $Res Function(_$AnimalListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimalListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? animals = null,
  }) {
    return _then(_$AnimalListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnimalListStatus,
      animals: null == animals
          ? _value._animals
          : animals // ignore: cast_nullable_to_non_nullable
              as List<AnimalWithOwner>,
    ));
  }
}

/// @nodoc

class _$AnimalListStateImpl implements _AnimalListState {
  const _$AnimalListStateImpl(
      {required this.status, required final List<AnimalWithOwner> animals})
      : _animals = animals;

  @override
  final AnimalListStatus status;
  final List<AnimalWithOwner> _animals;
  @override
  List<AnimalWithOwner> get animals {
    if (_animals is EqualUnmodifiableListView) return _animals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animals);
  }

  @override
  String toString() {
    return 'AnimalListState(status: $status, animals: $animals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._animals, _animals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_animals));

  /// Create a copy of AnimalListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalListStateImplCopyWith<_$AnimalListStateImpl> get copyWith =>
      __$$AnimalListStateImplCopyWithImpl<_$AnimalListStateImpl>(
          this, _$identity);
}

abstract class _AnimalListState implements AnimalListState {
  const factory _AnimalListState(
      {required final AnimalListStatus status,
      required final List<AnimalWithOwner> animals}) = _$AnimalListStateImpl;

  @override
  AnimalListStatus get status;
  @override
  List<AnimalWithOwner> get animals;

  /// Create a copy of AnimalListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimalListStateImplCopyWith<_$AnimalListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
