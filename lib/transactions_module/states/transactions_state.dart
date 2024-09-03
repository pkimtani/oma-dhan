import 'package:apps/transactions_module/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_state.freezed.dart';

enum TransactionsStatus {
  initial, // when there are no transactions available
  fetching, // when transactions are being loaded
  fetchSuccess, // when transactions are loaded
  fetchError, // when there is an error loading transactions
}

@freezed
sealed class TransactionsState with _$TransactionsState {
  const TransactionsState._();

  const factory TransactionsState({
    required TransactionsStatus status,
    String? message,
    List<Transaction>? transactions,
  }) = _TransactionState;

  factory TransactionsState.initial() {
    return const TransactionsState(
      status: TransactionsStatus.initial,
      message: null,
      transactions: null,
    );
  }

  factory TransactionsState.fetching() {
    return const TransactionsState(
      status: TransactionsStatus.fetching,
      message: null,
      transactions: null,
    );
  }

  factory TransactionsState.fetchSuccess(List<Transaction> transactions) {
    return TransactionsState(
      status: TransactionsStatus.fetchSuccess,
      message: null,
      transactions: transactions,
    );
  }

  factory TransactionsState.fetchError(String message) {
    return TransactionsState(
      status: TransactionsStatus.fetchError,
      message: message,
      transactions: null,
    );
  }
}
