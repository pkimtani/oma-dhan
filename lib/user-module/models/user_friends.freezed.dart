// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_friends.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFriends _$UserFriendsFromJson(Map<String, dynamic> json) {
  return _UserFriends.fromJson(json);
}

/// @nodoc
mixin _$UserFriends {
  String get userId => throw _privateConstructorUsedError;
  String get friendId => throw _privateConstructorUsedError;

  /// Serializes this UserFriends to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserFriends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFriendsCopyWith<UserFriends> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFriendsCopyWith<$Res> {
  factory $UserFriendsCopyWith(
          UserFriends value, $Res Function(UserFriends) then) =
      _$UserFriendsCopyWithImpl<$Res, UserFriends>;
  @useResult
  $Res call({String userId, String friendId});
}

/// @nodoc
class _$UserFriendsCopyWithImpl<$Res, $Val extends UserFriends>
    implements $UserFriendsCopyWith<$Res> {
  _$UserFriendsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFriends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? friendId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      friendId: null == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFriendsImplCopyWith<$Res>
    implements $UserFriendsCopyWith<$Res> {
  factory _$$UserFriendsImplCopyWith(
          _$UserFriendsImpl value, $Res Function(_$UserFriendsImpl) then) =
      __$$UserFriendsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String friendId});
}

/// @nodoc
class __$$UserFriendsImplCopyWithImpl<$Res>
    extends _$UserFriendsCopyWithImpl<$Res, _$UserFriendsImpl>
    implements _$$UserFriendsImplCopyWith<$Res> {
  __$$UserFriendsImplCopyWithImpl(
      _$UserFriendsImpl _value, $Res Function(_$UserFriendsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserFriends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? friendId = null,
  }) {
    return _then(_$UserFriendsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      friendId: null == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFriendsImpl implements _UserFriends {
  const _$UserFriendsImpl({required this.userId, required this.friendId});

  factory _$UserFriendsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFriendsImplFromJson(json);

  @override
  final String userId;
  @override
  final String friendId;

  @override
  String toString() {
    return 'UserFriends(userId: $userId, friendId: $friendId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFriendsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, friendId);

  /// Create a copy of UserFriends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFriendsImplCopyWith<_$UserFriendsImpl> get copyWith =>
      __$$UserFriendsImplCopyWithImpl<_$UserFriendsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFriendsImplToJson(
      this,
    );
  }
}

abstract class _UserFriends implements UserFriends {
  const factory _UserFriends(
      {required final String userId,
      required final String friendId}) = _$UserFriendsImpl;

  factory _UserFriends.fromJson(Map<String, dynamic> json) =
      _$UserFriendsImpl.fromJson;

  @override
  String get userId;
  @override
  String get friendId;

  /// Create a copy of UserFriends
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFriendsImplCopyWith<_$UserFriendsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
