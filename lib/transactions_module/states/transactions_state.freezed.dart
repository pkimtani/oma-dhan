// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)
        $default, {
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Transaction> transactions) fetchSuccess,
    required TResult Function(String message) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<Transaction> transactions)? fetchSuccess,
    TResult? Function(String message)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Transaction> transactions)? fetchSuccess,
    TResult Function(String message)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TransactionState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Fetching value) fetching,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchError value) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TransactionState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Fetching value)? fetching,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchError value)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TransactionState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Fetching value)? fetching,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchError value)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransactionStateImplCopyWith<$Res> {
  factory _$$TransactionStateImplCopyWith(_$TransactionStateImpl value,
          $Res Function(_$TransactionStateImpl) then) =
      __$$TransactionStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, List<Transaction>? transactions});
}

/// @nodoc
class __$$TransactionStateImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$TransactionStateImpl>
    implements _$$TransactionStateImplCopyWith<$Res> {
  __$$TransactionStateImplCopyWithImpl(_$TransactionStateImpl _value,
      $Res Function(_$TransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_$TransactionStateImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      transactions: freezed == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
    ));
  }
}

/// @nodoc

class _$TransactionStateImpl implements _TransactionState {
  const _$TransactionStateImpl(
      {this.message, final List<Transaction>? transactions})
      : _transactions = transactions;

  @override
  final String? message;
  final List<Transaction>? _transactions;
  @override
  List<Transaction>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionsState(message: $message, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      __$$TransactionStateImplCopyWithImpl<_$TransactionStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)
        $default, {
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Transaction> transactions) fetchSuccess,
    required TResult Function(String message) fetchError,
  }) {
    return $default(message, transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<Transaction> transactions)? fetchSuccess,
    TResult? Function(String message)? fetchError,
  }) {
    return $default?.call(message, transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Transaction> transactions)? fetchSuccess,
    TResult Function(String message)? fetchError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message, transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TransactionState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Fetching value) fetching,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchError value) fetchError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TransactionState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Fetching value)? fetching,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchError value)? fetchError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TransactionState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Fetching value)? fetching,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TransactionState implements TransactionsState {
  const factory _TransactionState(
      {final String? message,
      final List<Transaction>? transactions}) = _$TransactionStateImpl;

  String? get message;
  List<Transaction>? get transactions;

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TransactionsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)
        $default, {
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Transaction> transactions) fetchSuccess,
    required TResult Function(String message) fetchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<Transaction> transactions)? fetchSuccess,
    TResult? Function(String message)? fetchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Transaction> transactions)? fetchSuccess,
    TResult Function(String message)? fetchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TransactionState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Fetching value) fetching,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchError value) fetchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TransactionState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Fetching value)? fetching,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchError value)? fetchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TransactionState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Fetching value)? fetching,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TransactionsState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchingImplCopyWith<$Res> {
  factory _$$FetchingImplCopyWith(
          _$FetchingImpl value, $Res Function(_$FetchingImpl) then) =
      __$$FetchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$FetchingImpl>
    implements _$$FetchingImplCopyWith<$Res> {
  __$$FetchingImplCopyWithImpl(
      _$FetchingImpl _value, $Res Function(_$FetchingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchingImpl implements Fetching {
  const _$FetchingImpl();

  @override
  String toString() {
    return 'TransactionsState.fetching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)
        $default, {
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Transaction> transactions) fetchSuccess,
    required TResult Function(String message) fetchError,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<Transaction> transactions)? fetchSuccess,
    TResult? Function(String message)? fetchError,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Transaction> transactions)? fetchSuccess,
    TResult Function(String message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TransactionState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Fetching value) fetching,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchError value) fetchError,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TransactionState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Fetching value)? fetching,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchError value)? fetchError,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TransactionState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Fetching value)? fetching,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class Fetching implements TransactionsState {
  const factory Fetching() = _$FetchingImpl;
}

/// @nodoc
abstract class _$$FetchSuccessImplCopyWith<$Res> {
  factory _$$FetchSuccessImplCopyWith(
          _$FetchSuccessImpl value, $Res Function(_$FetchSuccessImpl) then) =
      __$$FetchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$FetchSuccessImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$FetchSuccessImpl>
    implements _$$FetchSuccessImplCopyWith<$Res> {
  __$$FetchSuccessImplCopyWithImpl(
      _$FetchSuccessImpl _value, $Res Function(_$FetchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$FetchSuccessImpl(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$FetchSuccessImpl implements FetchSuccess {
  const _$FetchSuccessImpl(final List<Transaction> transactions)
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionsState.fetchSuccess(transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSuccessImplCopyWith<_$FetchSuccessImpl> get copyWith =>
      __$$FetchSuccessImplCopyWithImpl<_$FetchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)
        $default, {
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Transaction> transactions) fetchSuccess,
    required TResult Function(String message) fetchError,
  }) {
    return fetchSuccess(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<Transaction> transactions)? fetchSuccess,
    TResult? Function(String message)? fetchError,
  }) {
    return fetchSuccess?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Transaction> transactions)? fetchSuccess,
    TResult Function(String message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TransactionState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Fetching value) fetching,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchError value) fetchError,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TransactionState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Fetching value)? fetching,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchError value)? fetchError,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TransactionState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Fetching value)? fetching,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchSuccess implements TransactionsState {
  const factory FetchSuccess(final List<Transaction> transactions) =
      _$FetchSuccessImpl;

  List<Transaction> get transactions;

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSuccessImplCopyWith<_$FetchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchErrorImplCopyWith<$Res> {
  factory _$$FetchErrorImplCopyWith(
          _$FetchErrorImpl value, $Res Function(_$FetchErrorImpl) then) =
      __$$FetchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchErrorImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$FetchErrorImpl>
    implements _$$FetchErrorImplCopyWith<$Res> {
  __$$FetchErrorImplCopyWithImpl(
      _$FetchErrorImpl _value, $Res Function(_$FetchErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchErrorImpl implements FetchError {
  const _$FetchErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TransactionsState.fetchError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchErrorImplCopyWith<_$FetchErrorImpl> get copyWith =>
      __$$FetchErrorImplCopyWithImpl<_$FetchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)
        $default, {
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Transaction> transactions) fetchSuccess,
    required TResult Function(String message) fetchError,
  }) {
    return fetchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<Transaction> transactions)? fetchSuccess,
    TResult? Function(String message)? fetchError,
  }) {
    return fetchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message, List<Transaction>? transactions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Transaction> transactions)? fetchSuccess,
    TResult Function(String message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TransactionState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Fetching value) fetching,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchError value) fetchError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TransactionState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Fetching value)? fetching,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchError value)? fetchError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TransactionState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Fetching value)? fetching,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class FetchError implements TransactionsState {
  const factory FetchError(final String message) = _$FetchErrorImpl;

  String get message;

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchErrorImplCopyWith<_$FetchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
