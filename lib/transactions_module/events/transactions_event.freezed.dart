// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() loadAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? error,
    TResult? Function()? loadAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? loadAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorLoadingTransactionsEvent value) error,
    required TResult Function(LoadAllTransactionsEvent value) loadAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorLoadingTransactionsEvent value)? error,
    TResult? Function(LoadAllTransactionsEvent value)? loadAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorLoadingTransactionsEvent value)? error,
    TResult Function(LoadAllTransactionsEvent value)? loadAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsEventCopyWith<$Res> {
  factory $TransactionsEventCopyWith(
          TransactionsEvent value, $Res Function(TransactionsEvent) then) =
      _$TransactionsEventCopyWithImpl<$Res, TransactionsEvent>;
}

/// @nodoc
class _$TransactionsEventCopyWithImpl<$Res, $Val extends TransactionsEvent>
    implements $TransactionsEventCopyWith<$Res> {
  _$TransactionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ErrorLoadingTransactionsEventImplCopyWith<$Res> {
  factory _$$ErrorLoadingTransactionsEventImplCopyWith(
          _$ErrorLoadingTransactionsEventImpl value,
          $Res Function(_$ErrorLoadingTransactionsEventImpl) then) =
      __$$ErrorLoadingTransactionsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorLoadingTransactionsEventImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res,
        _$ErrorLoadingTransactionsEventImpl>
    implements _$$ErrorLoadingTransactionsEventImplCopyWith<$Res> {
  __$$ErrorLoadingTransactionsEventImplCopyWithImpl(
      _$ErrorLoadingTransactionsEventImpl _value,
      $Res Function(_$ErrorLoadingTransactionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorLoadingTransactionsEventImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorLoadingTransactionsEventImpl
    implements ErrorLoadingTransactionsEvent {
  const _$ErrorLoadingTransactionsEventImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'TransactionsEvent.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoadingTransactionsEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TransactionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLoadingTransactionsEventImplCopyWith<
          _$ErrorLoadingTransactionsEventImpl>
      get copyWith => __$$ErrorLoadingTransactionsEventImplCopyWithImpl<
          _$ErrorLoadingTransactionsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() loadAll,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? error,
    TResult? Function()? loadAll,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? loadAll,
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
    required TResult Function(ErrorLoadingTransactionsEvent value) error,
    required TResult Function(LoadAllTransactionsEvent value) loadAll,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorLoadingTransactionsEvent value)? error,
    TResult? Function(LoadAllTransactionsEvent value)? loadAll,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorLoadingTransactionsEvent value)? error,
    TResult Function(LoadAllTransactionsEvent value)? loadAll,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLoadingTransactionsEvent implements TransactionsEvent {
  const factory ErrorLoadingTransactionsEvent(final String? message) =
      _$ErrorLoadingTransactionsEventImpl;

  String? get message;

  /// Create a copy of TransactionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorLoadingTransactionsEventImplCopyWith<
          _$ErrorLoadingTransactionsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllTransactionsEventImplCopyWith<$Res> {
  factory _$$LoadAllTransactionsEventImplCopyWith(
          _$LoadAllTransactionsEventImpl value,
          $Res Function(_$LoadAllTransactionsEventImpl) then) =
      __$$LoadAllTransactionsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAllTransactionsEventImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res,
        _$LoadAllTransactionsEventImpl>
    implements _$$LoadAllTransactionsEventImplCopyWith<$Res> {
  __$$LoadAllTransactionsEventImplCopyWithImpl(
      _$LoadAllTransactionsEventImpl _value,
      $Res Function(_$LoadAllTransactionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAllTransactionsEventImpl implements LoadAllTransactionsEvent {
  const _$LoadAllTransactionsEventImpl();

  @override
  String toString() {
    return 'TransactionsEvent.loadAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllTransactionsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() loadAll,
  }) {
    return loadAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? error,
    TResult? Function()? loadAll,
  }) {
    return loadAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? loadAll,
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
    required TResult Function(ErrorLoadingTransactionsEvent value) error,
    required TResult Function(LoadAllTransactionsEvent value) loadAll,
  }) {
    return loadAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorLoadingTransactionsEvent value)? error,
    TResult? Function(LoadAllTransactionsEvent value)? loadAll,
  }) {
    return loadAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorLoadingTransactionsEvent value)? error,
    TResult Function(LoadAllTransactionsEvent value)? loadAll,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll(this);
    }
    return orElse();
  }
}

abstract class LoadAllTransactionsEvent implements TransactionsEvent {
  const factory LoadAllTransactionsEvent() = _$LoadAllTransactionsEventImpl;
}
