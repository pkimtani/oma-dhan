// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      first: json['first'] as String,
      last: json['last'] as String,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
    };

_$UserTypeImpl _$$UserTypeImplFromJson(Map<String, dynamic> json) =>
    _$UserTypeImpl(
      type: json['type'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserTypeImplToJson(_$UserTypeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'runtimeType': instance.$type,
    };

_$IndividualImpl _$$IndividualImplFromJson(Map<String, dynamic> json) =>
    _$IndividualImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IndividualImplToJson(_$IndividualImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      email: json['email'] as String,
      userType: json['userType'] == null
          ? const UserType.individual()
          : UserType.fromJson(json['userType'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'userType': instance.userType,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
