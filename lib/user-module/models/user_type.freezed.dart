// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserType _$UserTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'individual':
      return _Individual.fromJson(json);
    case 'group':
      return _Group.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() individual,
    required TResult Function() group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? individual,
    TResult? Function()? group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? individual,
    TResult Function()? group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Individual value) individual,
    required TResult Function(_Group value) group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Individual value)? individual,
    TResult? Function(_Group value)? group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Individual value)? individual,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UserType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeCopyWith<$Res> {
  factory $UserTypeCopyWith(UserType value, $Res Function(UserType) then) =
      _$UserTypeCopyWithImpl<$Res, UserType>;
}

/// @nodoc
class _$UserTypeCopyWithImpl<$Res, $Val extends UserType>
    implements $UserTypeCopyWith<$Res> {
  _$UserTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IndividualImplCopyWith<$Res> {
  factory _$$IndividualImplCopyWith(
          _$IndividualImpl value, $Res Function(_$IndividualImpl) then) =
      __$$IndividualImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IndividualImplCopyWithImpl<$Res>
    extends _$UserTypeCopyWithImpl<$Res, _$IndividualImpl>
    implements _$$IndividualImplCopyWith<$Res> {
  __$$IndividualImplCopyWithImpl(
      _$IndividualImpl _value, $Res Function(_$IndividualImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$IndividualImpl extends _Individual {
  const _$IndividualImpl({final String? $type})
      : $type = $type ?? 'individual',
        super._();

  factory _$IndividualImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndividualImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserType.individual()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IndividualImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() individual,
    required TResult Function() group,
  }) {
    return individual();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? individual,
    TResult? Function()? group,
  }) {
    return individual?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? individual,
    TResult Function()? group,
    required TResult orElse(),
  }) {
    if (individual != null) {
      return individual();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Individual value) individual,
    required TResult Function(_Group value) group,
  }) {
    return individual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Individual value)? individual,
    TResult? Function(_Group value)? group,
  }) {
    return individual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Individual value)? individual,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (individual != null) {
      return individual(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IndividualImplToJson(
      this,
    );
  }
}

abstract class _Individual extends UserType {
  const factory _Individual() = _$IndividualImpl;
  const _Individual._() : super._();

  factory _Individual.fromJson(Map<String, dynamic> json) =
      _$IndividualImpl.fromJson;
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
          _$GroupImpl value, $Res Function(_$GroupImpl) then) =
      __$$GroupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$UserTypeCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
      _$GroupImpl _value, $Res Function(_$GroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl extends _Group {
  const _$GroupImpl({final String? $type})
      : $type = $type ?? 'group',
        super._();

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserType.group()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() individual,
    required TResult Function() group,
  }) {
    return group();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? individual,
    TResult? Function()? group,
  }) {
    return group?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? individual,
    TResult Function()? group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Individual value) individual,
    required TResult Function(_Group value) group,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Individual value)? individual,
    TResult? Function(_Group value)? group,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Individual value)? individual,
    TResult Function(_Group value)? group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(
      this,
    );
  }
}

abstract class _Group extends UserType {
  const factory _Group() = _$GroupImpl;
  const _Group._() : super._();

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;
}
