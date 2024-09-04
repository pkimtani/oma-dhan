// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAllUsersEvent value) loadAll,
    required TResult Function(ErrorLoadingUsersEvent value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAllUsersEvent value)? loadAll,
    TResult? Function(ErrorLoadingUsersEvent value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAllUsersEvent value)? loadAll,
    TResult Function(ErrorLoadingUsersEvent value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadAllUsersEventImplCopyWith<$Res> {
  factory _$$LoadAllUsersEventImplCopyWith(_$LoadAllUsersEventImpl value,
          $Res Function(_$LoadAllUsersEventImpl) then) =
      __$$LoadAllUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAllUsersEventImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$LoadAllUsersEventImpl>
    implements _$$LoadAllUsersEventImplCopyWith<$Res> {
  __$$LoadAllUsersEventImplCopyWithImpl(_$LoadAllUsersEventImpl _value,
      $Res Function(_$LoadAllUsersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAllUsersEventImpl extends LoadAllUsersEvent {
  const _$LoadAllUsersEventImpl() : super._();

  @override
  String toString() {
    return 'UsersEvent.loadAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAllUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(String? message) error,
  }) {
    return loadAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(String? message)? error,
  }) {
    return loadAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAllUsersEvent value) loadAll,
    required TResult Function(ErrorLoadingUsersEvent value) error,
  }) {
    return loadAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAllUsersEvent value)? loadAll,
    TResult? Function(ErrorLoadingUsersEvent value)? error,
  }) {
    return loadAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAllUsersEvent value)? loadAll,
    TResult Function(ErrorLoadingUsersEvent value)? error,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll(this);
    }
    return orElse();
  }
}

abstract class LoadAllUsersEvent extends UsersEvent {
  const factory LoadAllUsersEvent() = _$LoadAllUsersEventImpl;
  const LoadAllUsersEvent._() : super._();
}

/// @nodoc
abstract class _$$ErrorLoadingUsersEventImplCopyWith<$Res> {
  factory _$$ErrorLoadingUsersEventImplCopyWith(
          _$ErrorLoadingUsersEventImpl value,
          $Res Function(_$ErrorLoadingUsersEventImpl) then) =
      __$$ErrorLoadingUsersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorLoadingUsersEventImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$ErrorLoadingUsersEventImpl>
    implements _$$ErrorLoadingUsersEventImplCopyWith<$Res> {
  __$$ErrorLoadingUsersEventImplCopyWithImpl(
      _$ErrorLoadingUsersEventImpl _value,
      $Res Function(_$ErrorLoadingUsersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorLoadingUsersEventImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorLoadingUsersEventImpl extends ErrorLoadingUsersEvent {
  const _$ErrorLoadingUsersEventImpl(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'UsersEvent.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoadingUsersEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLoadingUsersEventImplCopyWith<_$ErrorLoadingUsersEventImpl>
      get copyWith => __$$ErrorLoadingUsersEventImplCopyWithImpl<
          _$ErrorLoadingUsersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAllUsersEvent value) loadAll,
    required TResult Function(ErrorLoadingUsersEvent value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAllUsersEvent value)? loadAll,
    TResult? Function(ErrorLoadingUsersEvent value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAllUsersEvent value)? loadAll,
    TResult Function(ErrorLoadingUsersEvent value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLoadingUsersEvent extends UsersEvent {
  const factory ErrorLoadingUsersEvent(final String? message) =
      _$ErrorLoadingUsersEventImpl;
  const ErrorLoadingUsersEvent._() : super._();

  String? get message;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorLoadingUsersEventImplCopyWith<_$ErrorLoadingUsersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
