import 'package:apps/core/validators/form_field_value.dart';
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

@freezed
class TransactionFormState with _$TransactionFormState {
  const TransactionFormState._();

  const factory TransactionFormState({
    FormFieldValue? title,
    FormFieldValue? notes,
    FormFieldValue? amount,
    DateTime? date,
    String? saveError,
    String? loadError,
    String? deleteError,
  }) = _AddTransactionFormState;

  factory TransactionFormState.initial() => const TransactionFormState();

  factory TransactionFormState.editing(TransactionFormState transaction) =>
      transaction;

  factory TransactionFormState.saving() => const TransactionFormState();

  factory TransactionFormState.saved() => const TransactionFormState();

  factory TransactionFormState.saveError(TransactionFormState transaction) =>
      transaction;
}
