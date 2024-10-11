// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthProvider _$AuthProviderFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'emailAndPassword':
      return EmailAndPassword.fromJson(json);
    case 'google':
      return Google.fromJson(json);
    case 'facebook':
      return Facebook.fromJson(json);
    case 'apple':
      return Apple.fromJson(json);
    case 'custom':
      return Custom.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthProvider',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthProvider {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
    required TResult Function() apple,
    required TResult Function() custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
    TResult? Function()? apple,
    TResult? Function()? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    TResult Function()? apple,
    TResult Function()? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPassword value) emailAndPassword,
    required TResult Function(Google value) google,
    required TResult Function(Facebook value) facebook,
    required TResult Function(Apple value) apple,
    required TResult Function(Custom value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPassword value)? emailAndPassword,
    TResult? Function(Google value)? google,
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Apple value)? apple,
    TResult? Function(Custom value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPassword value)? emailAndPassword,
    TResult Function(Google value)? google,
    TResult Function(Facebook value)? facebook,
    TResult Function(Apple value)? apple,
    TResult Function(Custom value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AuthProvider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthProviderCopyWith<$Res> {
  factory $AuthProviderCopyWith(
          AuthProvider value, $Res Function(AuthProvider) then) =
      _$AuthProviderCopyWithImpl<$Res, AuthProvider>;
}

/// @nodoc
class _$AuthProviderCopyWithImpl<$Res, $Val extends AuthProvider>
    implements $AuthProviderCopyWith<$Res> {
  _$AuthProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthProvider
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailAndPasswordImplCopyWith<$Res> {
  factory _$$EmailAndPasswordImplCopyWith(_$EmailAndPasswordImpl value,
          $Res Function(_$EmailAndPasswordImpl) then) =
      __$$EmailAndPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthProviderCopyWithImpl<$Res, _$EmailAndPasswordImpl>
    implements _$$EmailAndPasswordImplCopyWith<$Res> {
  __$$EmailAndPasswordImplCopyWithImpl(_$EmailAndPasswordImpl _value,
      $Res Function(_$EmailAndPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthProvider
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EmailAndPasswordImpl extends EmailAndPassword {
  const _$EmailAndPasswordImpl({final String? $type})
      : $type = $type ?? 'emailAndPassword',
        super._();

  factory _$EmailAndPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailAndPasswordImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthProvider.emailAndPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAndPasswordImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
    required TResult Function() apple,
    required TResult Function() custom,
  }) {
    return emailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
    TResult? Function()? apple,
    TResult? Function()? custom,
  }) {
    return emailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    TResult Function()? apple,
    TResult Function()? custom,
    required TResult orElse(),
  }) {
    if (emailAndPassword != null) {
      return emailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPassword value) emailAndPassword,
    required TResult Function(Google value) google,
    required TResult Function(Facebook value) facebook,
    required TResult Function(Apple value) apple,
    required TResult Function(Custom value) custom,
  }) {
    return emailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPassword value)? emailAndPassword,
    TResult? Function(Google value)? google,
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Apple value)? apple,
    TResult? Function(Custom value)? custom,
  }) {
    return emailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPassword value)? emailAndPassword,
    TResult Function(Google value)? google,
    TResult Function(Facebook value)? facebook,
    TResult Function(Apple value)? apple,
    TResult Function(Custom value)? custom,
    required TResult orElse(),
  }) {
    if (emailAndPassword != null) {
      return emailAndPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailAndPasswordImplToJson(
      this,
    );
  }
}

abstract class EmailAndPassword extends AuthProvider {
  const factory EmailAndPassword() = _$EmailAndPasswordImpl;
  const EmailAndPassword._() : super._();

  factory EmailAndPassword.fromJson(Map<String, dynamic> json) =
      _$EmailAndPasswordImpl.fromJson;
}

/// @nodoc
abstract class _$$GoogleImplCopyWith<$Res> {
  factory _$$GoogleImplCopyWith(
          _$GoogleImpl value, $Res Function(_$GoogleImpl) then) =
      __$$GoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleImplCopyWithImpl<$Res>
    extends _$AuthProviderCopyWithImpl<$Res, _$GoogleImpl>
    implements _$$GoogleImplCopyWith<$Res> {
  __$$GoogleImplCopyWithImpl(
      _$GoogleImpl _value, $Res Function(_$GoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthProvider
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GoogleImpl extends Google {
  const _$GoogleImpl({final String? $type})
      : $type = $type ?? 'google',
        super._();

  factory _$GoogleImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthProvider.google()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
    required TResult Function() apple,
    required TResult Function() custom,
  }) {
    return google();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
    TResult? Function()? apple,
    TResult? Function()? custom,
  }) {
    return google?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    TResult Function()? apple,
    TResult Function()? custom,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPassword value) emailAndPassword,
    required TResult Function(Google value) google,
    required TResult Function(Facebook value) facebook,
    required TResult Function(Apple value) apple,
    required TResult Function(Custom value) custom,
  }) {
    return google(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPassword value)? emailAndPassword,
    TResult? Function(Google value)? google,
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Apple value)? apple,
    TResult? Function(Custom value)? custom,
  }) {
    return google?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPassword value)? emailAndPassword,
    TResult Function(Google value)? google,
    TResult Function(Facebook value)? facebook,
    TResult Function(Apple value)? apple,
    TResult Function(Custom value)? custom,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleImplToJson(
      this,
    );
  }
}

abstract class Google extends AuthProvider {
  const factory Google() = _$GoogleImpl;
  const Google._() : super._();

  factory Google.fromJson(Map<String, dynamic> json) = _$GoogleImpl.fromJson;
}

/// @nodoc
abstract class _$$FacebookImplCopyWith<$Res> {
  factory _$$FacebookImplCopyWith(
          _$FacebookImpl value, $Res Function(_$FacebookImpl) then) =
      __$$FacebookImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FacebookImplCopyWithImpl<$Res>
    extends _$AuthProviderCopyWithImpl<$Res, _$FacebookImpl>
    implements _$$FacebookImplCopyWith<$Res> {
  __$$FacebookImplCopyWithImpl(
      _$FacebookImpl _value, $Res Function(_$FacebookImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthProvider
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$FacebookImpl extends Facebook {
  const _$FacebookImpl({final String? $type})
      : $type = $type ?? 'facebook',
        super._();

  factory _$FacebookImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacebookImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthProvider.facebook()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FacebookImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
    required TResult Function() apple,
    required TResult Function() custom,
  }) {
    return facebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
    TResult? Function()? apple,
    TResult? Function()? custom,
  }) {
    return facebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    TResult Function()? apple,
    TResult Function()? custom,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPassword value) emailAndPassword,
    required TResult Function(Google value) google,
    required TResult Function(Facebook value) facebook,
    required TResult Function(Apple value) apple,
    required TResult Function(Custom value) custom,
  }) {
    return facebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPassword value)? emailAndPassword,
    TResult? Function(Google value)? google,
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Apple value)? apple,
    TResult? Function(Custom value)? custom,
  }) {
    return facebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPassword value)? emailAndPassword,
    TResult Function(Google value)? google,
    TResult Function(Facebook value)? facebook,
    TResult Function(Apple value)? apple,
    TResult Function(Custom value)? custom,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FacebookImplToJson(
      this,
    );
  }
}

abstract class Facebook extends AuthProvider {
  const factory Facebook() = _$FacebookImpl;
  const Facebook._() : super._();

  factory Facebook.fromJson(Map<String, dynamic> json) =
      _$FacebookImpl.fromJson;
}

/// @nodoc
abstract class _$$AppleImplCopyWith<$Res> {
  factory _$$AppleImplCopyWith(
          _$AppleImpl value, $Res Function(_$AppleImpl) then) =
      __$$AppleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppleImplCopyWithImpl<$Res>
    extends _$AuthProviderCopyWithImpl<$Res, _$AppleImpl>
    implements _$$AppleImplCopyWith<$Res> {
  __$$AppleImplCopyWithImpl(
      _$AppleImpl _value, $Res Function(_$AppleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthProvider
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AppleImpl extends Apple {
  const _$AppleImpl({final String? $type})
      : $type = $type ?? 'apple',
        super._();

  factory _$AppleImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppleImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthProvider.apple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppleImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
    required TResult Function() apple,
    required TResult Function() custom,
  }) {
    return apple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
    TResult? Function()? apple,
    TResult? Function()? custom,
  }) {
    return apple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    TResult Function()? apple,
    TResult Function()? custom,
    required TResult orElse(),
  }) {
    if (apple != null) {
      return apple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPassword value) emailAndPassword,
    required TResult Function(Google value) google,
    required TResult Function(Facebook value) facebook,
    required TResult Function(Apple value) apple,
    required TResult Function(Custom value) custom,
  }) {
    return apple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPassword value)? emailAndPassword,
    TResult? Function(Google value)? google,
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Apple value)? apple,
    TResult? Function(Custom value)? custom,
  }) {
    return apple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPassword value)? emailAndPassword,
    TResult Function(Google value)? google,
    TResult Function(Facebook value)? facebook,
    TResult Function(Apple value)? apple,
    TResult Function(Custom value)? custom,
    required TResult orElse(),
  }) {
    if (apple != null) {
      return apple(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppleImplToJson(
      this,
    );
  }
}

abstract class Apple extends AuthProvider {
  const factory Apple() = _$AppleImpl;
  const Apple._() : super._();

  factory Apple.fromJson(Map<String, dynamic> json) = _$AppleImpl.fromJson;
}

/// @nodoc
abstract class _$$CustomImplCopyWith<$Res> {
  factory _$$CustomImplCopyWith(
          _$CustomImpl value, $Res Function(_$CustomImpl) then) =
      __$$CustomImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomImplCopyWithImpl<$Res>
    extends _$AuthProviderCopyWithImpl<$Res, _$CustomImpl>
    implements _$$CustomImplCopyWith<$Res> {
  __$$CustomImplCopyWithImpl(
      _$CustomImpl _value, $Res Function(_$CustomImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthProvider
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CustomImpl extends Custom {
  const _$CustomImpl({final String? $type})
      : $type = $type ?? 'custom',
        super._();

  factory _$CustomImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthProvider.custom()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CustomImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAndPassword,
    required TResult Function() google,
    required TResult Function() facebook,
    required TResult Function() apple,
    required TResult Function() custom,
  }) {
    return custom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emailAndPassword,
    TResult? Function()? google,
    TResult? Function()? facebook,
    TResult? Function()? apple,
    TResult? Function()? custom,
  }) {
    return custom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAndPassword,
    TResult Function()? google,
    TResult Function()? facebook,
    TResult Function()? apple,
    TResult Function()? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPassword value) emailAndPassword,
    required TResult Function(Google value) google,
    required TResult Function(Facebook value) facebook,
    required TResult Function(Apple value) apple,
    required TResult Function(Custom value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPassword value)? emailAndPassword,
    TResult? Function(Google value)? google,
    TResult? Function(Facebook value)? facebook,
    TResult? Function(Apple value)? apple,
    TResult? Function(Custom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPassword value)? emailAndPassword,
    TResult Function(Google value)? google,
    TResult Function(Facebook value)? facebook,
    TResult Function(Apple value)? apple,
    TResult Function(Custom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomImplToJson(
      this,
    );
  }
}

abstract class Custom extends AuthProvider {
  const factory Custom() = _$CustomImpl;
  const Custom._() : super._();

  factory Custom.fromJson(Map<String, dynamic> json) = _$CustomImpl.fromJson;
}
