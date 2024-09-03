// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTransactionFormState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Create a copy of AddTransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTransactionFormStateCopyWith<AddTransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionFormStateCopyWith<$Res> {
  factory $AddTransactionFormStateCopyWith(AddTransactionFormState value,
          $Res Function(AddTransactionFormState) then) =
      _$AddTransactionFormStateCopyWithImpl<$Res, AddTransactionFormState>;
  @useResult
  $Res call({String title, String description, double amount, DateTime date});
}

/// @nodoc
class _$AddTransactionFormStateCopyWithImpl<$Res,
        $Val extends AddTransactionFormState>
    implements $AddTransactionFormStateCopyWith<$Res> {
  _$AddTransactionFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTransactionFormStateImplCopyWith<$Res>
    implements $AddTransactionFormStateCopyWith<$Res> {
  factory _$$AddTransactionFormStateImplCopyWith(
          _$AddTransactionFormStateImpl value,
          $Res Function(_$AddTransactionFormStateImpl) then) =
      __$$AddTransactionFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, double amount, DateTime date});
}

/// @nodoc
class __$$AddTransactionFormStateImplCopyWithImpl<$Res>
    extends _$AddTransactionFormStateCopyWithImpl<$Res,
        _$AddTransactionFormStateImpl>
    implements _$$AddTransactionFormStateImplCopyWith<$Res> {
  __$$AddTransactionFormStateImplCopyWithImpl(
      _$AddTransactionFormStateImpl _value,
      $Res Function(_$AddTransactionFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddTransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_$AddTransactionFormStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AddTransactionFormStateImpl extends _AddTransactionFormState {
  const _$AddTransactionFormStateImpl(
      {required this.title,
      required this.description,
      required this.amount,
      required this.date})
      : super._();

  @override
  final String title;
  @override
  final String description;
  @override
  final double amount;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'AddTransactionFormState(title: $title, description: $description, amount: $amount, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionFormStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, amount, date);

  /// Create a copy of AddTransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionFormStateImplCopyWith<_$AddTransactionFormStateImpl>
      get copyWith => __$$AddTransactionFormStateImplCopyWithImpl<
          _$AddTransactionFormStateImpl>(this, _$identity);
}

abstract class _AddTransactionFormState extends AddTransactionFormState {
  const factory _AddTransactionFormState(
      {required final String title,
      required final String description,
      required final double amount,
      required final DateTime date}) = _$AddTransactionFormStateImpl;
  const _AddTransactionFormState._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  double get amount;
  @override
  DateTime get date;

  /// Create a copy of AddTransactionFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTransactionFormStateImplCopyWith<_$AddTransactionFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
