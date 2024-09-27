// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionFormState {
  TransactionFormStatus get transactionFormStatus =>
      throw _privateConstructorUsedError;
  FormFieldValue get title => throw _privateConstructorUsedError;
  FormFieldValue get notes => throw _privateConstructorUsedError;
  FormFieldValue get amount => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Transaction? get transaction => throw _privateConstructorUsedError;
  String? get saveError => throw _privateConstructorUsedError;
  String? get loadError => throw _privateConstructorUsedError;
  String? get deleteError => throw _privateConstructorUsedError;

  /// Create a copy of TransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionFormStateCopyWith<TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormStateCopyWith<$Res> {
  factory $TransactionFormStateCopyWith(TransactionFormState value,
          $Res Function(TransactionFormState) then) =
      _$TransactionFormStateCopyWithImpl<$Res, TransactionFormState>;
  @useResult
  $Res call(
      {TransactionFormStatus transactionFormStatus,
      FormFieldValue title,
      FormFieldValue notes,
      FormFieldValue amount,
      User? user,
      Transaction? transaction,
      String? saveError,
      String? loadError,
      String? deleteError});

  $UserCopyWith<$Res>? get user;
  $TransactionCopyWith<$Res>? get transaction;
}

/// @nodoc
class _$TransactionFormStateCopyWithImpl<$Res,
        $Val extends TransactionFormState>
    implements $TransactionFormStateCopyWith<$Res> {
  _$TransactionFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionFormStatus = null,
    Object? title = null,
    Object? notes = null,
    Object? amount = null,
    Object? user = freezed,
    Object? transaction = freezed,
    Object? saveError = freezed,
    Object? loadError = freezed,
    Object? deleteError = freezed,
  }) {
    return _then(_value.copyWith(
      transactionFormStatus: null == transactionFormStatus
          ? _value.transactionFormStatus
          : transactionFormStatus // ignore: cast_nullable_to_non_nullable
              as TransactionFormStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FormFieldValue,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as FormFieldValue,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as FormFieldValue,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      saveError: freezed == saveError
          ? _value.saveError
          : saveError // ignore: cast_nullable_to_non_nullable
              as String?,
      loadError: freezed == loadError
          ? _value.loadError
          : loadError // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteError: freezed == deleteError
          ? _value.deleteError
          : deleteError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of TransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of TransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res>? get transaction {
    if (_value.transaction == null) {
      return null;
    }

    return $TransactionCopyWith<$Res>(_value.transaction!, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddTransactionFormStateImplCopyWith<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  factory _$$AddTransactionFormStateImplCopyWith(
          _$AddTransactionFormStateImpl value,
          $Res Function(_$AddTransactionFormStateImpl) then) =
      __$$AddTransactionFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionFormStatus transactionFormStatus,
      FormFieldValue title,
      FormFieldValue notes,
      FormFieldValue amount,
      User? user,
      Transaction? transaction,
      String? saveError,
      String? loadError,
      String? deleteError});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $TransactionCopyWith<$Res>? get transaction;
}

/// @nodoc
class __$$AddTransactionFormStateImplCopyWithImpl<$Res>
    extends _$TransactionFormStateCopyWithImpl<$Res,
        _$AddTransactionFormStateImpl>
    implements _$$AddTransactionFormStateImplCopyWith<$Res> {
  __$$AddTransactionFormStateImplCopyWithImpl(
      _$AddTransactionFormStateImpl _value,
      $Res Function(_$AddTransactionFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionFormStatus = null,
    Object? title = null,
    Object? notes = null,
    Object? amount = null,
    Object? user = freezed,
    Object? transaction = freezed,
    Object? saveError = freezed,
    Object? loadError = freezed,
    Object? deleteError = freezed,
  }) {
    return _then(_$AddTransactionFormStateImpl(
      transactionFormStatus: null == transactionFormStatus
          ? _value.transactionFormStatus
          : transactionFormStatus // ignore: cast_nullable_to_non_nullable
              as TransactionFormStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FormFieldValue,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as FormFieldValue,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as FormFieldValue,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      saveError: freezed == saveError
          ? _value.saveError
          : saveError // ignore: cast_nullable_to_non_nullable
              as String?,
      loadError: freezed == loadError
          ? _value.loadError
          : loadError // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteError: freezed == deleteError
          ? _value.deleteError
          : deleteError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddTransactionFormStateImpl implements _AddTransactionFormState {
  const _$AddTransactionFormStateImpl(
      {this.transactionFormStatus = TransactionFormStatus.initial,
      this.title = const FormFieldValue(value: null),
      this.notes = const FormFieldValue(value: null),
      this.amount = const FormFieldValue(value: null),
      this.user,
      this.transaction,
      this.saveError,
      this.loadError,
      this.deleteError});

  @override
  @JsonKey()
  final TransactionFormStatus transactionFormStatus;
  @override
  @JsonKey()
  final FormFieldValue title;
  @override
  @JsonKey()
  final FormFieldValue notes;
  @override
  @JsonKey()
  final FormFieldValue amount;
  @override
  final User? user;
  @override
  final Transaction? transaction;
  @override
  final String? saveError;
  @override
  final String? loadError;
  @override
  final String? deleteError;

  @override
  String toString() {
    return 'TransactionFormState(transactionFormStatus: $transactionFormStatus, title: $title, notes: $notes, amount: $amount, user: $user, transaction: $transaction, saveError: $saveError, loadError: $loadError, deleteError: $deleteError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionFormStateImpl &&
            (identical(other.transactionFormStatus, transactionFormStatus) ||
                other.transactionFormStatus == transactionFormStatus) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.saveError, saveError) ||
                other.saveError == saveError) &&
            (identical(other.loadError, loadError) ||
                other.loadError == loadError) &&
            (identical(other.deleteError, deleteError) ||
                other.deleteError == deleteError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionFormStatus, title,
      notes, amount, user, transaction, saveError, loadError, deleteError);

  /// Create a copy of TransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionFormStateImplCopyWith<_$AddTransactionFormStateImpl>
      get copyWith => __$$AddTransactionFormStateImplCopyWithImpl<
          _$AddTransactionFormStateImpl>(this, _$identity);
}

abstract class _AddTransactionFormState implements TransactionFormState {
  const factory _AddTransactionFormState(
      {final TransactionFormStatus transactionFormStatus,
      final FormFieldValue title,
      final FormFieldValue notes,
      final FormFieldValue amount,
      final User? user,
      final Transaction? transaction,
      final String? saveError,
      final String? loadError,
      final String? deleteError}) = _$AddTransactionFormStateImpl;

  @override
  TransactionFormStatus get transactionFormStatus;
  @override
  FormFieldValue get title;
  @override
  FormFieldValue get notes;
  @override
  FormFieldValue get amount;
  @override
  User? get user;
  @override
  Transaction? get transaction;
  @override
  String? get saveError;
  @override
  String? get loadError;
  @override
  String? get deleteError;

  /// Create a copy of TransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTransactionFormStateImplCopyWith<_$AddTransactionFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
