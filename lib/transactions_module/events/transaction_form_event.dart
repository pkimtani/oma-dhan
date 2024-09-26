import 'package:apps/user-module/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_form_event.freezed.dart';

@freezed
sealed class TransactionFormEvent with _$TransactionFormEvent {
  const TransactionFormEvent._();

  // initialize form
  const factory TransactionFormEvent.init() = TransactionFormInitEvent;

  // user change
  const factory TransactionFormEvent.userChanged(User user) =
      TransactionFormUserChangedEvent;

  // update title field
  const factory TransactionFormEvent.titleChanged(String title) =
      TransactionFormTitleChangedEvent;

  // update notes field
  const factory TransactionFormEvent.notesChanged(String notes) =
      TransactionFormNotesChangedEvent;

  // update amount field
  const factory TransactionFormEvent.amountChanged(String amount) =
      TransactionFormAmountChangedEvent;

  // update date field

  // save transaction form
  const factory TransactionFormEvent.save() = TransactionFormSaveEvent;

  // transaction form error
  const factory TransactionFormEvent.saveError(String message) =
      TransactionFormErrorOnSaveEvent;
}
