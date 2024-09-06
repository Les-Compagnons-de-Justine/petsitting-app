// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission_creation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MissionCreation {
  UserDTO? get customer => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  List<DailyServiceCreationDTO>? get dailyServices =>
      throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  PlaceDetailsDTO? get location => throw _privateConstructorUsedError;

  /// Create a copy of MissionCreation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MissionCreationCopyWith<MissionCreation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionCreationCopyWith<$Res> {
  factory $MissionCreationCopyWith(
          MissionCreation value, $Res Function(MissionCreation) then) =
      _$MissionCreationCopyWithImpl<$Res, MissionCreation>;
  @useResult
  $Res call(
      {UserDTO? customer,
      DateTime? startDate,
      DateTime? endDate,
      List<DailyServiceCreationDTO>? dailyServices,
      String? notes,
      PlaceDetailsDTO? location});
}

/// @nodoc
class _$MissionCreationCopyWithImpl<$Res, $Val extends MissionCreation>
    implements $MissionCreationCopyWith<$Res> {
  _$MissionCreationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MissionCreation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? dailyServices = freezed,
    Object? notes = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dailyServices: freezed == dailyServices
          ? _value.dailyServices
          : dailyServices // ignore: cast_nullable_to_non_nullable
              as List<DailyServiceCreationDTO>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceDetailsDTO?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissionCreationImplCopyWith<$Res>
    implements $MissionCreationCopyWith<$Res> {
  factory _$$MissionCreationImplCopyWith(_$MissionCreationImpl value,
          $Res Function(_$MissionCreationImpl) then) =
      __$$MissionCreationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserDTO? customer,
      DateTime? startDate,
      DateTime? endDate,
      List<DailyServiceCreationDTO>? dailyServices,
      String? notes,
      PlaceDetailsDTO? location});
}

/// @nodoc
class __$$MissionCreationImplCopyWithImpl<$Res>
    extends _$MissionCreationCopyWithImpl<$Res, _$MissionCreationImpl>
    implements _$$MissionCreationImplCopyWith<$Res> {
  __$$MissionCreationImplCopyWithImpl(
      _$MissionCreationImpl _value, $Res Function(_$MissionCreationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MissionCreation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? dailyServices = freezed,
    Object? notes = freezed,
    Object? location = freezed,
  }) {
    return _then(_$MissionCreationImpl(
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dailyServices: freezed == dailyServices
          ? _value._dailyServices
          : dailyServices // ignore: cast_nullable_to_non_nullable
              as List<DailyServiceCreationDTO>?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceDetailsDTO?,
    ));
  }
}

/// @nodoc

class _$MissionCreationImpl implements _MissionCreation {
  const _$MissionCreationImpl(
      {this.customer,
      this.startDate,
      this.endDate,
      final List<DailyServiceCreationDTO>? dailyServices,
      this.notes,
      this.location})
      : _dailyServices = dailyServices;

  @override
  final UserDTO? customer;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  final List<DailyServiceCreationDTO>? _dailyServices;
  @override
  List<DailyServiceCreationDTO>? get dailyServices {
    final value = _dailyServices;
    if (value == null) return null;
    if (_dailyServices is EqualUnmodifiableListView) return _dailyServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? notes;
  @override
  final PlaceDetailsDTO? location;

  @override
  String toString() {
    return 'MissionCreation(customer: $customer, startDate: $startDate, endDate: $endDate, dailyServices: $dailyServices, notes: $notes, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionCreationImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._dailyServices, _dailyServices) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer, startDate, endDate,
      const DeepCollectionEquality().hash(_dailyServices), notes, location);

  /// Create a copy of MissionCreation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionCreationImplCopyWith<_$MissionCreationImpl> get copyWith =>
      __$$MissionCreationImplCopyWithImpl<_$MissionCreationImpl>(
          this, _$identity);
}

abstract class _MissionCreation implements MissionCreation {
  const factory _MissionCreation(
      {final UserDTO? customer,
      final DateTime? startDate,
      final DateTime? endDate,
      final List<DailyServiceCreationDTO>? dailyServices,
      final String? notes,
      final PlaceDetailsDTO? location}) = _$MissionCreationImpl;

  @override
  UserDTO? get customer;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  List<DailyServiceCreationDTO>? get dailyServices;
  @override
  String? get notes;
  @override
  PlaceDetailsDTO? get location;

  /// Create a copy of MissionCreation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissionCreationImplCopyWith<_$MissionCreationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
