// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticated_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticatedUser _$AuthenticatedUserFromJson(Map<String, dynamic> json) {
  return _AuthenticatedUser.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedUser {
  String? get id => throw _privateConstructorUsedError;
  AuthProvider? get provider => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get fireName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profilePicUrl => throw _privateConstructorUsedError;

  /// Serializes this AuthenticatedUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticatedUserCopyWith<AuthenticatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserCopyWith<$Res> {
  factory $AuthenticatedUserCopyWith(
          AuthenticatedUser value, $Res Function(AuthenticatedUser) then) =
      _$AuthenticatedUserCopyWithImpl<$Res, AuthenticatedUser>;
  @useResult
  $Res call(
      {String? id,
      AuthProvider? provider,
      String? username,
      String? fireName,
      String? lastName,
      String? email,
      String? profilePicUrl});

  $AuthProviderCopyWith<$Res>? get provider;
}

/// @nodoc
class _$AuthenticatedUserCopyWithImpl<$Res, $Val extends AuthenticatedUser>
    implements $AuthenticatedUserCopyWith<$Res> {
  _$AuthenticatedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provider = freezed,
    Object? username = freezed,
    Object? fireName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? profilePicUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fireName: freezed == fireName
          ? _value.fireName
          : fireName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthProviderCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $AuthProviderCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticatedUserImplCopyWith<$Res>
    implements $AuthenticatedUserCopyWith<$Res> {
  factory _$$AuthenticatedUserImplCopyWith(_$AuthenticatedUserImpl value,
          $Res Function(_$AuthenticatedUserImpl) then) =
      __$$AuthenticatedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      AuthProvider? provider,
      String? username,
      String? fireName,
      String? lastName,
      String? email,
      String? profilePicUrl});

  @override
  $AuthProviderCopyWith<$Res>? get provider;
}

/// @nodoc
class __$$AuthenticatedUserImplCopyWithImpl<$Res>
    extends _$AuthenticatedUserCopyWithImpl<$Res, _$AuthenticatedUserImpl>
    implements _$$AuthenticatedUserImplCopyWith<$Res> {
  __$$AuthenticatedUserImplCopyWithImpl(_$AuthenticatedUserImpl _value,
      $Res Function(_$AuthenticatedUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provider = freezed,
    Object? username = freezed,
    Object? fireName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? profilePicUrl = freezed,
  }) {
    return _then(_$AuthenticatedUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fireName: freezed == fireName
          ? _value.fireName
          : fireName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
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
class _$AuthenticatedUserImpl implements _AuthenticatedUser {
  const _$AuthenticatedUserImpl(
      {this.id,
      this.provider,
      this.username,
      this.fireName,
      this.lastName,
      this.email,
      this.profilePicUrl});

  factory _$AuthenticatedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedUserImplFromJson(json);

  @override
  final String? id;
  @override
  final AuthProvider? provider;
  @override
  final String? username;
  @override
  final String? fireName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? profilePicUrl;

  @override
  String toString() {
    return 'AuthenticatedUser(id: $id, provider: $provider, username: $username, fireName: $fireName, lastName: $lastName, email: $email, profilePicUrl: $profilePicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fireName, fireName) ||
                other.fireName == fireName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, provider, username, fireName,
      lastName, email, profilePicUrl);

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      __$$AuthenticatedUserImplCopyWithImpl<_$AuthenticatedUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedUserImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUser implements AuthenticatedUser {
  const factory _AuthenticatedUser(
      {final String? id,
      final AuthProvider? provider,
      final String? username,
      final String? fireName,
      final String? lastName,
      final String? email,
      final String? profilePicUrl}) = _$AuthenticatedUserImpl;

  factory _AuthenticatedUser.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedUserImpl.fromJson;

  @override
  String? get id;
  @override
  AuthProvider? get provider;
  @override
  String? get username;
  @override
  String? get fireName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get profilePicUrl;

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
