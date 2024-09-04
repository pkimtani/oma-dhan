import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_form_event.freezed.dart';

@freezed
sealed class TransactionFormEvent with _$TransactionFormEvent {
  const TransactionFormEvent._();

  // initialize form
  const factory TransactionFormEvent.init() = InitTransactionFormEvent;

  // update title field
  const factory TransactionFormEvent.titleChanged(String title) =
      TitleChangedTransactionEvent;

  // update notes field
  const factory TransactionFormEvent.notesChanged(String notes) =
      NotesChangedTransactionEvent;

  // update amount field
  const factory TransactionFormEvent.amountChanged(String amount) =
      AmountChangedTransactionEvent;

  // update date field

  // submit transaction
  const factory TransactionFormEvent.submitting() = SubmittingTransactionEvent;

  // submit success
  const factory TransactionFormEvent.success() = SuccessSavingTransactionEvent;

  // error saving transaction
  const factory TransactionFormEvent.error() = ErrorSavingTransactionEvent;
}
