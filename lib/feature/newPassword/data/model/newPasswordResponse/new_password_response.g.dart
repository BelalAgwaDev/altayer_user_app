// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPasswordResponse _$NewPasswordResponseFromJson(Map<String, dynamic> json) =>
    NewPasswordResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      token: json['token'] as String?,
      data: json['data'] == null
          ? null
          : DataNewPasswordResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewPasswordResponseToJson(
        NewPasswordResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'data': instance.data,
    };

DataNewPasswordResponse _$DataNewPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    DataNewPasswordResponse(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      active: json['active'] as bool?,
      sId: json['sId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: (json['iV'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataNewPasswordResponseToJson(
        DataNewPasswordResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'role': instance.role,
      'active': instance.active,
      'sId': instance.sId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
    };
