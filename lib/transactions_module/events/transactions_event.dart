import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_event.freezed.dart';

@freezed
sealed class TransactionsEvent with _$TransactionsEvent {
  const TransactionsEvent._();

  // error loading transactions
  const factory TransactionsEvent.error(String? message) =
      ErrorLoadingTransactionsEvent;

  // load transactions
  const factory TransactionsEvent.loadAll() = LoadAllTransactionsEvent;
}
