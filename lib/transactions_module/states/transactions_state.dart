import 'package:apps/transactions_module/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_state.freezed.dart';

enum TransactionsStatus {
  initial,
  fetching,
  fetchedSuccessfully,
  fetchingFailed,
}

@freezed
sealed class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    @Default(TransactionsStatus.initial) TransactionsStatus transactionStatus,
    String? message,
    @Default([]) List<Transaction>? transactions,
  }) = _TransactionState;
}
