import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
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
    String? notes,
    // @Default(Currency.usd()) Currency currency,
    required TransactionTypeEnum transactionType,
    required DateTime transactionDate,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
