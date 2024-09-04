import 'package:apps/core/models/currency.dart';
import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
import 'package:apps/user-module//models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  Transaction._();

  factory Transaction({
    required String id,
    required String user,
    required String title,
    required double amount,
    @Default('') String notes,
    @Default(Currency.usd()) Currency currency,
    required TransactionTypeEnum transactionType,
    required DateTime transactionDate,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  static get nullTransaction => Transaction(
        id: '',
        user: User.nullUser.id,
        title: 'No Transaction',
        amount: 0.0,
        notes: '',
        currency: const Currency.usd(),
        transactionType: TransactionTypeEnum.expense,
        transactionDate: DateTime.now(),
        createdAt: DateTime.now(),
      );
}
