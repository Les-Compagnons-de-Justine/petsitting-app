// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_animal_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialImpl _$$InitialImplFromJson(Map<String, dynamic> json) =>
    _$InitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialImplToJson(_$InitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadingImpl _$$LoadingImplFromJson(Map<String, dynamic> json) =>
    _$LoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingImplToJson(_$LoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AddedImpl _$$AddedImplFromJson(Map<String, dynamic> json) => _$AddedImpl(
      AnimalDTO.fromJson(json['animal'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddedImplToJson(_$AddedImpl instance) =>
    <String, dynamic>{
      'animal': instance.animal,
      'runtimeType': instance.$type,
    };

_$UpdatedImpl _$$UpdatedImplFromJson(Map<String, dynamic> json) =>
    _$UpdatedImpl(
      AnimalDTO.fromJson(json['animal'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdatedImplToJson(_$UpdatedImpl instance) =>
    <String, dynamic>{
      'animal': instance.animal,
      'runtimeType': instance.$type,
    };

_$DeletedImpl _$$DeletedImplFromJson(Map<String, dynamic> json) =>
    _$DeletedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeletedImplToJson(_$DeletedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
