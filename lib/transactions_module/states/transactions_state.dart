import 'package:apps/transactions_module/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_state.freezed.dart';

@freezed
sealed class TransactionsState with _$TransactionsState {
  const TransactionsState._();

  const factory TransactionsState({
    String? message,
    List<Transaction>? transactions,
  }) = _TransactionState;

  factory TransactionsState.initial() {
    return const TransactionsState(
      message: null,
      transactions: [],
    );
  }

  factory TransactionsState.fetching() {
    return const TransactionsState(
      message: null,
      transactions: null,
    );
  }

  factory TransactionsState.fetchSuccess(List<Transaction> transactions) {
    return TransactionsState(
      message: null,
      transactions: transactions,
    );
  }

  factory TransactionsState.fetchError(String message) {
    return TransactionsState(
      message: message,
      transactions: null,
    );
  }
}
