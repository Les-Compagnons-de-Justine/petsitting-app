// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_service_state.dart';

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

_$LoadedImpl _$$LoadedImplFromJson(Map<String, dynamic> json) => _$LoadedImpl(
      (json['services'] as List<dynamic>)
          .map((e) => MissionAnimalServiceCreationDTO.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedImplToJson(_$LoadedImpl instance) =>
    <String, dynamic>{
      'services': instance.services,
      'runtimeType': instance.$type,
    };
