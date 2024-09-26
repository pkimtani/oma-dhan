import 'package:apps/core/validators/form_field_value.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_form_state.freezed.dart';

///
/// States:
/// Initial - initial state for a new form
/// Editing - state when the form is being edited
/// Saving - state when the form is saving
/// Saved - state when the form is saved successfully
/// SaveError - state when the form has an error
/// Loading - state when the form is loading data
/// Loaded - state when the form has loaded data
/// LoadError - state when the form has an error loading data
/// Deleting - state when the form is deleting data
/// Deleted - state when the form has deleted data
/// DeleteError - state when the form has an error deleting data

enum TransactionFormStatus {
  initial,
  editing,
  saving,
  saved,
  saveError,
}

extension TransactionFormStatusX on TransactionFormStatus {
  bool get isSaving => [
        TransactionFormStatus.saving,
      ].contains(this);

  bool get isSavedSuccessfully => [
        TransactionFormStatus.saved,
      ].contains(this);

  bool get hasError => [
        TransactionFormStatus.saveError,
      ].contains(this);
}

@freezed
class TransactionFormState with _$TransactionFormState {
  const factory TransactionFormState({
    @Default(TransactionFormStatus.initial)
    TransactionFormStatus transactionFormStatus,
    @Default(FormFieldValue(value: null)) FormFieldValue title,
    @Default(FormFieldValue(value: null)) FormFieldValue notes,
    @Default(FormFieldValue(value: null)) FormFieldValue amount,
    User? user,
    Transaction? transaction,
    String? saveError,
    String? loadError,
    String? deleteError,
  }) = _AddTransactionFormState;
}
