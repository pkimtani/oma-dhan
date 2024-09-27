import 'package:apps/core/models/currency.dart';
import 'package:apps/core/validators/form_field_value.dart';
import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
import 'package:apps/transactions_module/events/transaction_form_event.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/states/transaction_form_state.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  final TransactionRepository transactionRepository;

  TransactionFormBloc({required this.transactionRepository})
      : super(const TransactionFormState(
            transactionFormStatus: TransactionFormStatus.initial)) {
    on<TransactionFormEvent>(
      (event, emit) => event.map(
        init: (event) => _initAddTransactionForm(event, emit),
        userChanged: (event) => _formChanged(event, emit),
        titleChanged: (event) => _formChanged(event, emit),
        notesChanged: (event) => _formChanged(event, emit),
        amountChanged: (event) => _formChanged(event, emit),
        save: (event) => _saveTransaction(event, emit),
        saveError: (event) => _errorTransaction(event, emit),
      ),
      transformer: null,
    );
  }

  Future<void> _initAddTransactionForm(
      TransactionFormEvent event, Emitter<TransactionFormState> emit) async {
    emit(state.copyWith(transactionFormStatus: TransactionFormStatus.initial));
  }

  Future<void> _formChanged(
      TransactionFormEvent event, Emitter<TransactionFormState> emit) async {
    switch (event) {
      case TransactionFormUserChangedEvent(:final user):
        emit(state.copyWith(
          transactionFormStatus: TransactionFormStatus.editing,
          user: user,
        ));
        break;
      case TransactionFormTitleChangedEvent(:final title):
        emit(state.copyWith(
          transactionFormStatus: TransactionFormStatus.editing,
          title: FormFieldValue.requiredText(title),
        ));
        break;
      case TransactionFormNotesChangedEvent(:final notes):
        emit(state.copyWith(
          transactionFormStatus: TransactionFormStatus.editing,
          notes: FormFieldValue.text(notes),
        ));
        break;
      case TransactionFormAmountChangedEvent(:final amount):
        emit(
          state.copyWith(
            transactionFormStatus: TransactionFormStatus.editing,
            amount: FormFieldValue.double(amount),
          ),
        );
        break;
      default:
        break;
    }
  }

  Future<void> _saveTransaction(
      TransactionFormEvent event, Emitter<TransactionFormState> emit) async {
    // set the form state to saving
    emit(state.copyWith(transactionFormStatus: TransactionFormStatus.saving));

    final TransactionFormState transactionFromState = state.copyWith(
      title: FormFieldValue.requiredText(state.title.value),
      notes: FormFieldValue.text(state.notes.value),
      amount: FormFieldValue.double(state.amount.value),
    );

    // TODO: added a delay for demo purpose, remove me.
    // await Future.delayed(const Duration(seconds: 2));

    // validate the form
    if (transactionFromState.title.error != null ||
        transactionFromState.notes.error != null ||
        transactionFromState.amount.error != null) {
      emit(transactionFromState.copyWith(
          transactionFormStatus: TransactionFormStatus.editing));
      return;
    }

    // save the form
    try {
      // save the transaction to the database
      await transactionRepository.createTransaction(
        NewTransaction(
          title: transactionFromState.title.value!,
          amount: double.parse(transactionFromState.amount.value!),

          // TODO: handle the following fields

          notes: transactionFromState.notes.value,
          user: transactionFromState.user?.id ?? User.nullUser.id,
          currency: transactionFromState.transaction?.currency ??
              const Currency.eur(),
          transactionType: transactionFromState.transaction?.transactionType ??
              TransactionTypeEnum.expense,
          transactionDate: transactionFromState.transaction?.transactionDate ??
              DateTime.now(),
          createdAt:
              transactionFromState.transaction?.createdAt ?? DateTime.now(),
          updatedAt: transactionFromState.transaction?.updatedAt,
          deletedAt: transactionFromState.transaction?.deletedAt,
        ),
      );
      emit(state.copyWith(transactionFormStatus: TransactionFormStatus.saved));
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }

      add(const TransactionFormEvent.saveError('Failed to save transaction'));
    }
  }

  Future<void> _errorTransaction(
      TransactionFormEvent event, Emitter<TransactionFormState> emit) async {
    switch (event) {
      case TransactionFormErrorOnSaveEvent(:final message):
        emit(state.copyWith(
          transactionFormStatus: TransactionFormStatus.saveError,
          saveError: message,
        ));
        break;
      default:
        break;
    }
  }
}
