import 'package:apps/core/validators/form_field_value.dart';
import 'package:apps/transactions_module/events/transaction_form_event.dart';
import 'package:apps/transactions_module/states/transaction_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  TransactionFormBloc() : super(TransactionFormState.initial()) {
    on<TransactionFormEvent>(
      (event, emit) => event.map(
        init: (event) => _initAddTransactionForm(event, emit),
        userChanged: (event) => _formChanged(event, emit),
        titleChanged: (event) => _formChanged(event, emit),
        notesChanged: (event) => _formChanged(event, emit),
        amountChanged: (event) => _formChanged(event, emit),
        submitting: (event) => null,
        success: (event) => null,
        error: (event) => null,
      ),
      transformer: null,
    );
  }

  Future<void> _initAddTransactionForm(
      TransactionFormEvent event, Emitter<TransactionFormState> emit) async {
    emit(TransactionFormState.initial());
  }

  Future<void> _formChanged(
      TransactionFormEvent event, Emitter<TransactionFormState> emit) async {
    switch (event) {
      case UserChangedTransactionEvent(:final user):
        emit(TransactionFormState.editing(state.copyWith(user: user)));
        break;
      case TitleChangedTransactionEvent(:final title):
        emit(TransactionFormState.editing(
            state.copyWith(title: FormFieldValue.requiredText(title))));
        break;
      case NotesChangedTransactionEvent(:final notes):
        emit(TransactionFormState.editing(
            state.copyWith(notes: FormFieldValue.text(notes))));
        break;
      case AmountChangedTransactionEvent(:final amount):
        emit(TransactionFormState.editing(
            state.copyWith(amount: FormFieldValue.double(amount))));
        break;
      default:
        break;
    }
  }
}
