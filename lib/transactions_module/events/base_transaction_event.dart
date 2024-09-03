import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_transaction_event.freezed.dart';

@freezed
class BaseTransactionEvent with _$BaseTransactionEvent {
  const factory BaseTransactionEvent.initial() = InitialTransactionsEvent;
  const factory BaseTransactionEvent.process() = FetchTransactionsEvent;
  const factory BaseTransactionEvent.ready() = FetchSuccessTransactionsEvent;
  const factory BaseTransactionEvent.error() = ErrorLoadingTransactionsEvent;
}