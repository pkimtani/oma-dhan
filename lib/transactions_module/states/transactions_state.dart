import 'package:apps/transactions_module/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_state.freezed.dart';

@freezed
sealed class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    String? message,
    List<Transaction>? transactions,
  }) = _TransactionState;

  const factory TransactionsState.initial() = Initial;

  const factory TransactionsState.fetching() = Fetching;

  const factory TransactionsState.fetchSuccess(List<Transaction> transactions) =
      FetchSuccess;

  const factory TransactionsState.fetchError(String message) = FetchError;
}
