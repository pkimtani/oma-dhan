// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticated_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatedUserImpl _$$AuthenticatedUserImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatedUserImpl(
      id: json['id'] as String?,
      provider: json['provider'] == null
          ? null
          : AuthProvider.fromJson(json['provider'] as Map<String, dynamic>),
      username: json['username'] as String?,
      fireName: json['fireName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      profilePicUrl: json['profilePicUrl'] as String?,
    );

Map<String, dynamic> _$$AuthenticatedUserImplToJson(
        _$AuthenticatedUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'username': instance.username,
      'fireName': instance.fireName,
      'lastName': instance.lastName,
      'email': instance.email,
      'profilePicUrl': instance.profilePicUrl,
    };
