// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

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

_$LoadedImpl _$$LoadedImplFromJson(Map<String, dynamic> json) => _$LoadedImpl(
      const WeatherConverter()
          .fromJson(json['weather'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedImplToJson(_$LoadedImpl instance) =>
    <String, dynamic>{
      'weather': const WeatherConverter().toJson(instance.weather),
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
