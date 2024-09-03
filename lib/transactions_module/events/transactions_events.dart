import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_events.freezed.dart';

@freezed
sealed class TransactionsEvent with _$TransactionsEvent {
  const TransactionsEvent._();

  // error loading transactions
  const factory TransactionsEvent.error() = ErrorLoadingTransactionsEvent;

  // load transactions
  const factory TransactionsEvent.loadAll() = LoadAllTransactionsEvent;
}
