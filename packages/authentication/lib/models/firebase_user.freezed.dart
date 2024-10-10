// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseUser _$FirebaseUserFromJson(Map<String, dynamic> json) {
  return _FirebaseUser.fromJson(json);
}

/// @nodoc
mixin _$FirebaseUser {
  String? get uid => throw _privateConstructorUsedError;
  String? get providerId => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profilePicUrl => throw _privateConstructorUsedError;

  /// Serializes this FirebaseUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirebaseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirebaseUserCopyWith<FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserCopyWith<$Res> {
  factory $FirebaseUserCopyWith(
          FirebaseUser value, $Res Function(FirebaseUser) then) =
      _$FirebaseUserCopyWithImpl<$Res, FirebaseUser>;
  @useResult
  $Res call(
      {String? uid,
      String? providerId,
      String? displayName,
      String? email,
      String? profilePicUrl});
}

/// @nodoc
class _$FirebaseUserCopyWithImpl<$Res, $Val extends FirebaseUser>
    implements $FirebaseUserCopyWith<$Res> {
  _$FirebaseUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? providerId = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? profilePicUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseUserImplCopyWith<$Res>
    implements $FirebaseUserCopyWith<$Res> {
  factory _$$FirebaseUserImplCopyWith(
          _$FirebaseUserImpl value, $Res Function(_$FirebaseUserImpl) then) =
      __$$FirebaseUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid,
      String? providerId,
      String? displayName,
      String? email,
      String? profilePicUrl});
}

/// @nodoc
class __$$FirebaseUserImplCopyWithImpl<$Res>
    extends _$FirebaseUserCopyWithImpl<$Res, _$FirebaseUserImpl>
    implements _$$FirebaseUserImplCopyWith<$Res> {
  __$$FirebaseUserImplCopyWithImpl(
      _$FirebaseUserImpl _value, $Res Function(_$FirebaseUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? providerId = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? profilePicUrl = freezed,
  }) {
    return _then(_$FirebaseUserImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseUserImpl implements _FirebaseUser {
  const _$FirebaseUserImpl(
      {this.uid,
      this.providerId,
      this.displayName,
      this.email,
      this.profilePicUrl});

  factory _$FirebaseUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseUserImplFromJson(json);

  @override
  final String? uid;
  @override
  final String? providerId;
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? profilePicUrl;

  @override
  String toString() {
    return 'FirebaseUser(uid: $uid, providerId: $providerId, displayName: $displayName, email: $email, profilePicUrl: $profilePicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseUserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, providerId, displayName, email, profilePicUrl);

  /// Create a copy of FirebaseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseUserImplCopyWith<_$FirebaseUserImpl> get copyWith =>
      __$$FirebaseUserImplCopyWithImpl<_$FirebaseUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseUserImplToJson(
      this,
    );
  }
}

abstract class _FirebaseUser implements FirebaseUser {
  const factory _FirebaseUser(
      {final String? uid,
      final String? providerId,
      final String? displayName,
      final String? email,
      final String? profilePicUrl}) = _$FirebaseUserImpl;

  factory _FirebaseUser.fromJson(Map<String, dynamic> json) =
      _$FirebaseUserImpl.fromJson;

  @override
  String? get uid;
  @override
  String? get providerId;
  @override
  String? get displayName;
  @override
  String? get email;
  @override
  String? get profilePicUrl;

  /// Create a copy of FirebaseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseUserImplCopyWith<_$FirebaseUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
