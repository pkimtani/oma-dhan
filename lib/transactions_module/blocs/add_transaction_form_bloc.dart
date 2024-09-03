import 'package:apps/transactions_module/events/add_transaction_form_event.dart';
import 'package:apps/transactions_module/states/add_transaction_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTransactionFormBloc
    extends Bloc<AddTransactionFormEvent, AddTransactionFormState> {
  AddTransactionFormBloc() : super(AddTransactionFormState.initial()) {
    on<AddTransactionFormEvent>(
      (event, emit) => event.map(
        init: (event) => _initAddTransactionForm(event, emit),
        titleChanged: (event) => _titleChanged(event, emit),
        amountChanged: (event) => null,
        dateChanged: (event) => null,
        submitting: (event) => null,
        success: (event) => null,
        error: (event) => null,
      ),
      transformer: null,
    );
  }

  Future<void> _initAddTransactionForm(AddTransactionFormEvent event,
      Emitter<AddTransactionFormState> emit) async {
    emit(AddTransactionFormState.initial());
  }

  Future<void> _titleChanged(TitleChangedTransactionEvent event,
      Emitter<AddTransactionFormState> emit) async {
    emit(state.copyWith(
      title: event.title,
    ));
  }
}
