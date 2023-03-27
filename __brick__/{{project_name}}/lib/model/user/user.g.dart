// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      userType: json['userType'] as String,
      phone: json['phone'] as String,
      birth: DateTime.parse(json['birth'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'userType': instance.userType,
      'phone': instance.phone,
      'birth': instance.birth.toIso8601String(),
    };
