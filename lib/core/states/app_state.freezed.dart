// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  UserAuthenticationStatus get userAuthenticationStatus =>
      throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String? get authenticationError => throw _privateConstructorUsedError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {UserAuthenticationStatus userAuthenticationStatus,
      User user,
      String? authenticationError});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAuthenticationStatus = null,
    Object? user = null,
    Object? authenticationError = freezed,
  }) {
    return _then(_value.copyWith(
      userAuthenticationStatus: null == userAuthenticationStatus
          ? _value.userAuthenticationStatus
          : userAuthenticationStatus // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      authenticationError: freezed == authenticationError
          ? _value.authenticationError
          : authenticationError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserAuthenticationStatus userAuthenticationStatus,
      User user,
      String? authenticationError});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAuthenticationStatus = null,
    Object? user = null,
    Object? authenticationError = freezed,
  }) {
    return _then(_$AppStateImpl(
      userAuthenticationStatus: null == userAuthenticationStatus
          ? _value.userAuthenticationStatus
          : userAuthenticationStatus // ignore: cast_nullable_to_non_nullable
              as UserAuthenticationStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      authenticationError: freezed == authenticationError
          ? _value.authenticationError
          : authenticationError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {required this.userAuthenticationStatus,
      required this.user,
      this.authenticationError});

  @override
  final UserAuthenticationStatus userAuthenticationStatus;
  @override
  final User user;
  @override
  final String? authenticationError;

  @override
  String toString() {
    return 'AppState(userAuthenticationStatus: $userAuthenticationStatus, user: $user, authenticationError: $authenticationError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(
                    other.userAuthenticationStatus, userAuthenticationStatus) ||
                other.userAuthenticationStatus == userAuthenticationStatus) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.authenticationError, authenticationError) ||
                other.authenticationError == authenticationError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userAuthenticationStatus, user, authenticationError);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final UserAuthenticationStatus userAuthenticationStatus,
      required final User user,
      final String? authenticationError}) = _$AppStateImpl;

  @override
  UserAuthenticationStatus get userAuthenticationStatus;
  @override
  User get user;
  @override
  String? get authenticationError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
