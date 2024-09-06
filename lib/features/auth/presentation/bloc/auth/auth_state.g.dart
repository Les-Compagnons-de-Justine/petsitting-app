// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

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

_$CheckingImpl _$$CheckingImplFromJson(Map<String, dynamic> json) =>
    _$CheckingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CheckingImplToJson(_$CheckingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$EmailUnverifiedImpl _$$EmailUnverifiedImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailUnverifiedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EmailUnverifiedImplToJson(
        _$EmailUnverifiedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UnauthenticatedImpl _$$UnauthenticatedImplFromJson(
        Map<String, dynamic> json) =>
    _$UnauthenticatedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnauthenticatedImplToJson(
        _$UnauthenticatedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PartiallyAuthenticatedImpl _$$PartiallyAuthenticatedImplFromJson(
        Map<String, dynamic> json) =>
    _$PartiallyAuthenticatedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PartiallyAuthenticatedImplToJson(
        _$PartiallyAuthenticatedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthenticatedImpl _$$AuthenticatedImplFromJson(Map<String, dynamic> json) =>
    _$AuthenticatedImpl(
      UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticatedImplToJson(_$AuthenticatedImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$CreateUserErrorImpl _$$CreateUserErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CreateUserErrorImplToJson(
        _$CreateUserErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
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

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
