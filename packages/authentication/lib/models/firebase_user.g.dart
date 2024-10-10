// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseUserImpl _$$FirebaseUserImplFromJson(Map<String, dynamic> json) =>
    _$FirebaseUserImpl(
      uid: json['uid'] as String?,
      providerId: json['providerId'] as String?,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      profilePicUrl: json['profilePicUrl'] as String?,
    );

Map<String, dynamic> _$$FirebaseUserImplToJson(_$FirebaseUserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'providerId': instance.providerId,
      'displayName': instance.displayName,
      'email': instance.email,
      'profilePicUrl': instance.profilePicUrl,
    };
