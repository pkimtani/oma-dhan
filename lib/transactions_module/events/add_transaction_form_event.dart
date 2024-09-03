import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_transaction_form_event.freezed.dart';

@freezed
sealed class AddTransactionFormEvent with _$AddTransactionFormEvent {
  const AddTransactionFormEvent._();

  // initialize form
  const factory AddTransactionFormEvent.init() = InitTransactionFormEvent;

  // update title field
  const factory AddTransactionFormEvent.titleChanged(String title) =
      TitleChangedTransactionEvent;

  // update amount field
  const factory AddTransactionFormEvent.amountChanged(String amount) =
      AmountChangedTransactionEvent;

  // update date field
  const factory AddTransactionFormEvent.dateChanged(DateTime date) =
      DateChangedTransactionEvent;

  // submit transaction
  const factory AddTransactionFormEvent.submitting() =
      SubmittingTransactionEvent;

  // submit success
  const factory AddTransactionFormEvent.success() =
      SuccessSavingTransactionEvent;

  // error saving transaction
  const factory AddTransactionFormEvent.error() = ErrorSavingTransactionEvent;
}
