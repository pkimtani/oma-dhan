// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Transaction.fromJson(json);
    case 'newTransaction':
      return NewTransaction.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Transaction',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Transaction {
  String? get id => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Currency? get currency => throw _privateConstructorUsedError;
  TransactionTypeEnum get transactionType => throw _privateConstructorUsedError;
  DateTime get transactionDate => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)
        $default, {
    required TResult Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)
        newTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        $default, {
    TResult? Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        newTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        $default, {
    TResult Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        newTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Transaction value) $default, {
    required TResult Function(NewTransaction value) newTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Transaction value)? $default, {
    TResult? Function(NewTransaction value)? newTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Transaction value)? $default, {
    TResult Function(NewTransaction value)? newTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {String id,
      String user,
      String title,
      double amount,
      String notes,
      Currency currency,
      TransactionTypeEnum transactionType,
      DateTime transactionDate,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  $CurrencyCopyWith<$Res>? get currency;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? title = null,
    Object? amount = null,
    Object? notes = null,
    Object? currency = null,
    Object? transactionType = null,
    Object? transactionDate = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id!
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      notes: null == notes
          ? _value.notes!
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency!
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypeEnum,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res>? get currency {
    if (_value.currency == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_value.currency!, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String user,
      String title,
      double amount,
      String notes,
      Currency currency,
      TransactionTypeEnum transactionType,
      DateTime transactionDate,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $CurrencyCopyWith<$Res> get currency;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? title = null,
    Object? amount = null,
    Object? notes = null,
    Object? currency = null,
    Object? transactionType = null,
    Object? transactionDate = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$TransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypeEnum,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl extends _Transaction {
  _$TransactionImpl(
      {required this.id,
      required this.user,
      required this.title,
      required this.amount,
      this.notes = '',
      this.currency = const Currency.eur(),
      required this.transactionType,
      required this.transactionDate,
      required this.createdAt,
      this.updatedAt,
      this.deletedAt,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  final String id;
  @override
  final String user;
  @override
  final String title;
  @override
  final double amount;
  @override
  @JsonKey()
  final String notes;
  @override
  @JsonKey()
  final Currency currency;
  @override
  final TransactionTypeEnum transactionType;
  @override
  final DateTime transactionDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Transaction(id: $id, user: $user, title: $title, amount: $amount, notes: $notes, currency: $currency, transactionType: $transactionType, transactionDate: $transactionDate, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      title,
      amount,
      notes,
      currency,
      transactionType,
      transactionDate,
      createdAt,
      updatedAt,
      deletedAt);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)
        $default, {
    required TResult Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)
        newTransaction,
  }) {
    return $default(id, user, title, amount, notes, currency, transactionType,
        transactionDate, createdAt, updatedAt, deletedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        $default, {
    TResult? Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        newTransaction,
  }) {
    return $default?.call(id, user, title, amount, notes, currency,
        transactionType, transactionDate, createdAt, updatedAt, deletedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        $default, {
    TResult Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        newTransaction,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, user, title, amount, notes, currency, transactionType,
          transactionDate, createdAt, updatedAt, deletedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Transaction value) $default, {
    required TResult Function(NewTransaction value) newTransaction,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Transaction value)? $default, {
    TResult? Function(NewTransaction value)? newTransaction,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Transaction value)? $default, {
    TResult Function(NewTransaction value)? newTransaction,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  factory _Transaction(
      {required final String id,
      required final String user,
      required final String title,
      required final double amount,
      final String notes,
      final Currency currency,
      required final TransactionTypeEnum transactionType,
      required final DateTime transactionDate,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$TransactionImpl;
  _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  String get id;
  @override
  String get user;
  @override
  String get title;
  @override
  double get amount;
  @override
  String get notes;
  @override
  Currency get currency;
  @override
  TransactionTypeEnum get transactionType;
  @override
  DateTime get transactionDate;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewTransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$NewTransactionImplCopyWith(_$NewTransactionImpl value,
          $Res Function(_$NewTransactionImpl) then) =
      __$$NewTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String user,
      String title,
      double amount,
      String? notes,
      Currency? currency,
      TransactionTypeEnum transactionType,
      DateTime transactionDate,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $CurrencyCopyWith<$Res>? get currency;
}

/// @nodoc
class __$$NewTransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$NewTransactionImpl>
    implements _$$NewTransactionImplCopyWith<$Res> {
  __$$NewTransactionImplCopyWithImpl(
      _$NewTransactionImpl _value, $Res Function(_$NewTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = null,
    Object? title = null,
    Object? amount = null,
    Object? notes = freezed,
    Object? currency = freezed,
    Object? transactionType = null,
    Object? transactionDate = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$NewTransactionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency?,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypeEnum,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewTransactionImpl extends NewTransaction {
  _$NewTransactionImpl(
      {this.id,
      required this.user,
      required this.title,
      required this.amount,
      this.notes = '',
      this.currency = const Currency.eur(),
      required this.transactionType,
      required this.transactionDate,
      required this.createdAt,
      this.updatedAt,
      this.deletedAt,
      final String? $type})
      : $type = $type ?? 'newTransaction',
        super._();

  factory _$NewTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewTransactionImplFromJson(json);

  @override
  final String? id;
  @override
  final String user;
  @override
  final String title;
  @override
  final double amount;
  @override
  @JsonKey()
  final String? notes;
  @override
  @JsonKey()
  final Currency? currency;
  @override
  final TransactionTypeEnum transactionType;
  @override
  final DateTime transactionDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Transaction.newTransaction(id: $id, user: $user, title: $title, amount: $amount, notes: $notes, currency: $currency, transactionType: $transactionType, transactionDate: $transactionDate, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      title,
      amount,
      notes,
      currency,
      transactionType,
      transactionDate,
      createdAt,
      updatedAt,
      deletedAt);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTransactionImplCopyWith<_$NewTransactionImpl> get copyWith =>
      __$$NewTransactionImplCopyWithImpl<_$NewTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)
        $default, {
    required TResult Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)
        newTransaction,
  }) {
    return newTransaction(id, user, title, amount, notes, currency,
        transactionType, transactionDate, createdAt, updatedAt, deletedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        $default, {
    TResult? Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        newTransaction,
  }) {
    return newTransaction?.call(id, user, title, amount, notes, currency,
        transactionType, transactionDate, createdAt, updatedAt, deletedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String user,
            String title,
            double amount,
            String notes,
            Currency currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        $default, {
    TResult Function(
            String? id,
            String user,
            String title,
            double amount,
            String? notes,
            Currency? currency,
            TransactionTypeEnum transactionType,
            DateTime transactionDate,
            DateTime createdAt,
            DateTime? updatedAt,
            DateTime? deletedAt)?
        newTransaction,
    required TResult orElse(),
  }) {
    if (newTransaction != null) {
      return newTransaction(id, user, title, amount, notes, currency,
          transactionType, transactionDate, createdAt, updatedAt, deletedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Transaction value) $default, {
    required TResult Function(NewTransaction value) newTransaction,
  }) {
    return newTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Transaction value)? $default, {
    TResult? Function(NewTransaction value)? newTransaction,
  }) {
    return newTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Transaction value)? $default, {
    TResult Function(NewTransaction value)? newTransaction,
    required TResult orElse(),
  }) {
    if (newTransaction != null) {
      return newTransaction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewTransactionImplToJson(
      this,
    );
  }
}

abstract class NewTransaction extends Transaction {
  factory NewTransaction(
      {final String? id,
      required final String user,
      required final String title,
      required final double amount,
      final String? notes,
      final Currency? currency,
      required final TransactionTypeEnum transactionType,
      required final DateTime transactionDate,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$NewTransactionImpl;
  NewTransaction._() : super._();

  factory NewTransaction.fromJson(Map<String, dynamic> json) =
      _$NewTransactionImpl.fromJson;

  @override
  String? get id;
  @override
  String get user;
  @override
  String get title;
  @override
  double get amount;
  @override
  String? get notes;
  @override
  Currency? get currency;
  @override
  TransactionTypeEnum get transactionType;
  @override
  DateTime get transactionDate;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewTransactionImplCopyWith<_$NewTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
