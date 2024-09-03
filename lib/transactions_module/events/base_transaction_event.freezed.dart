// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() process,
    required TResult Function() ready,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? process,
    TResult? Function()? ready,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? process,
    TResult Function()? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionsEvent value) initial,
    required TResult Function(FetchTransactionsEvent value) process,
    required TResult Function(FetchSuccessTransactionsEvent value) ready,
    required TResult Function(ErrorLoadingTransactionsEvent value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionsEvent value)? initial,
    TResult? Function(FetchTransactionsEvent value)? process,
    TResult? Function(FetchSuccessTransactionsEvent value)? ready,
    TResult? Function(ErrorLoadingTransactionsEvent value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionsEvent value)? initial,
    TResult Function(FetchTransactionsEvent value)? process,
    TResult Function(FetchSuccessTransactionsEvent value)? ready,
    TResult Function(ErrorLoadingTransactionsEvent value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseTransactionEventCopyWith<$Res> {
  factory $BaseTransactionEventCopyWith(BaseTransactionEvent value,
          $Res Function(BaseTransactionEvent) then) =
      _$BaseTransactionEventCopyWithImpl<$Res, BaseTransactionEvent>;
}

/// @nodoc
class _$BaseTransactionEventCopyWithImpl<$Res,
        $Val extends BaseTransactionEvent>
    implements $BaseTransactionEventCopyWith<$Res> {
  _$BaseTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialTransactionsEventImplCopyWith<$Res> {
  factory _$$InitialTransactionsEventImplCopyWith(
          _$InitialTransactionsEventImpl value,
          $Res Function(_$InitialTransactionsEventImpl) then) =
      __$$InitialTransactionsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialTransactionsEventImplCopyWithImpl<$Res>
    extends _$BaseTransactionEventCopyWithImpl<$Res,
        _$InitialTransactionsEventImpl>
    implements _$$InitialTransactionsEventImplCopyWith<$Res> {
  __$$InitialTransactionsEventImplCopyWithImpl(
      _$InitialTransactionsEventImpl _value,
      $Res Function(_$InitialTransactionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialTransactionsEventImpl implements InitialTransactionsEvent {
  const _$InitialTransactionsEventImpl();

  @override
  String toString() {
    return 'BaseTransactionEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialTransactionsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() process,
    required TResult Function() ready,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? process,
    TResult? Function()? ready,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? process,
    TResult Function()? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionsEvent value) initial,
    required TResult Function(FetchTransactionsEvent value) process,
    required TResult Function(FetchSuccessTransactionsEvent value) ready,
    required TResult Function(ErrorLoadingTransactionsEvent value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionsEvent value)? initial,
    TResult? Function(FetchTransactionsEvent value)? process,
    TResult? Function(FetchSuccessTransactionsEvent value)? ready,
    TResult? Function(ErrorLoadingTransactionsEvent value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionsEvent value)? initial,
    TResult Function(FetchTransactionsEvent value)? process,
    TResult Function(FetchSuccessTransactionsEvent value)? ready,
    TResult Function(ErrorLoadingTransactionsEvent value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialTransactionsEvent implements BaseTransactionEvent {
  const factory InitialTransactionsEvent() = _$InitialTransactionsEventImpl;
}

/// @nodoc
abstract class _$$FetchTransactionsEventImplCopyWith<$Res> {
  factory _$$FetchTransactionsEventImplCopyWith(
          _$FetchTransactionsEventImpl value,
          $Res Function(_$FetchTransactionsEventImpl) then) =
      __$$FetchTransactionsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTransactionsEventImplCopyWithImpl<$Res>
    extends _$BaseTransactionEventCopyWithImpl<$Res,
        _$FetchTransactionsEventImpl>
    implements _$$FetchTransactionsEventImplCopyWith<$Res> {
  __$$FetchTransactionsEventImplCopyWithImpl(
      _$FetchTransactionsEventImpl _value,
      $Res Function(_$FetchTransactionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTransactionsEventImpl implements FetchTransactionsEvent {
  const _$FetchTransactionsEventImpl();

  @override
  String toString() {
    return 'BaseTransactionEvent.process()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTransactionsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() process,
    required TResult Function() ready,
    required TResult Function() error,
  }) {
    return process();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? process,
    TResult? Function()? ready,
    TResult? Function()? error,
  }) {
    return process?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? process,
    TResult Function()? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (process != null) {
      return process();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionsEvent value) initial,
    required TResult Function(FetchTransactionsEvent value) process,
    required TResult Function(FetchSuccessTransactionsEvent value) ready,
    required TResult Function(ErrorLoadingTransactionsEvent value) error,
  }) {
    return process(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionsEvent value)? initial,
    TResult? Function(FetchTransactionsEvent value)? process,
    TResult? Function(FetchSuccessTransactionsEvent value)? ready,
    TResult? Function(ErrorLoadingTransactionsEvent value)? error,
  }) {
    return process?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionsEvent value)? initial,
    TResult Function(FetchTransactionsEvent value)? process,
    TResult Function(FetchSuccessTransactionsEvent value)? ready,
    TResult Function(ErrorLoadingTransactionsEvent value)? error,
    required TResult orElse(),
  }) {
    if (process != null) {
      return process(this);
    }
    return orElse();
  }
}

abstract class FetchTransactionsEvent implements BaseTransactionEvent {
  const factory FetchTransactionsEvent() = _$FetchTransactionsEventImpl;
}

/// @nodoc
abstract class _$$FetchSuccessTransactionsEventImplCopyWith<$Res> {
  factory _$$FetchSuccessTransactionsEventImplCopyWith(
          _$FetchSuccessTransactionsEventImpl value,
          $Res Function(_$FetchSuccessTransactionsEventImpl) then) =
      __$$FetchSuccessTransactionsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSuccessTransactionsEventImplCopyWithImpl<$Res>
    extends _$BaseTransactionEventCopyWithImpl<$Res,
        _$FetchSuccessTransactionsEventImpl>
    implements _$$FetchSuccessTransactionsEventImplCopyWith<$Res> {
  __$$FetchSuccessTransactionsEventImplCopyWithImpl(
      _$FetchSuccessTransactionsEventImpl _value,
      $Res Function(_$FetchSuccessTransactionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchSuccessTransactionsEventImpl
    implements FetchSuccessTransactionsEvent {
  const _$FetchSuccessTransactionsEventImpl();

  @override
  String toString() {
    return 'BaseTransactionEvent.ready()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSuccessTransactionsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() process,
    required TResult Function() ready,
    required TResult Function() error,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? process,
    TResult? Function()? ready,
    TResult? Function()? error,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? process,
    TResult Function()? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionsEvent value) initial,
    required TResult Function(FetchTransactionsEvent value) process,
    required TResult Function(FetchSuccessTransactionsEvent value) ready,
    required TResult Function(ErrorLoadingTransactionsEvent value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionsEvent value)? initial,
    TResult? Function(FetchTransactionsEvent value)? process,
    TResult? Function(FetchSuccessTransactionsEvent value)? ready,
    TResult? Function(ErrorLoadingTransactionsEvent value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionsEvent value)? initial,
    TResult Function(FetchTransactionsEvent value)? process,
    TResult Function(FetchSuccessTransactionsEvent value)? ready,
    TResult Function(ErrorLoadingTransactionsEvent value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class FetchSuccessTransactionsEvent implements BaseTransactionEvent {
  const factory FetchSuccessTransactionsEvent() =
      _$FetchSuccessTransactionsEventImpl;
}

/// @nodoc
abstract class _$$ErrorLoadingTransactionsEventImplCopyWith<$Res> {
  factory _$$ErrorLoadingTransactionsEventImplCopyWith(
          _$ErrorLoadingTransactionsEventImpl value,
          $Res Function(_$ErrorLoadingTransactionsEventImpl) then) =
      __$$ErrorLoadingTransactionsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorLoadingTransactionsEventImplCopyWithImpl<$Res>
    extends _$BaseTransactionEventCopyWithImpl<$Res,
        _$ErrorLoadingTransactionsEventImpl>
    implements _$$ErrorLoadingTransactionsEventImplCopyWith<$Res> {
  __$$ErrorLoadingTransactionsEventImplCopyWithImpl(
      _$ErrorLoadingTransactionsEventImpl _value,
      $Res Function(_$ErrorLoadingTransactionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorLoadingTransactionsEventImpl
    implements ErrorLoadingTransactionsEvent {
  const _$ErrorLoadingTransactionsEventImpl();

  @override
  String toString() {
    return 'BaseTransactionEvent.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoadingTransactionsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() process,
    required TResult Function() ready,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? process,
    TResult? Function()? ready,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? process,
    TResult Function()? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionsEvent value) initial,
    required TResult Function(FetchTransactionsEvent value) process,
    required TResult Function(FetchSuccessTransactionsEvent value) ready,
    required TResult Function(ErrorLoadingTransactionsEvent value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionsEvent value)? initial,
    TResult? Function(FetchTransactionsEvent value)? process,
    TResult? Function(FetchSuccessTransactionsEvent value)? ready,
    TResult? Function(ErrorLoadingTransactionsEvent value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionsEvent value)? initial,
    TResult Function(FetchTransactionsEvent value)? process,
    TResult Function(FetchSuccessTransactionsEvent value)? ready,
    TResult Function(ErrorLoadingTransactionsEvent value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLoadingTransactionsEvent implements BaseTransactionEvent {
  const factory ErrorLoadingTransactionsEvent() =
      _$ErrorLoadingTransactionsEventImpl;
}
