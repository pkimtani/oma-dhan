import 'package:apps/transactions_module/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_transaction_form_state.freezed.dart';

@freezed
class AddTransactionFormState with _$AddTransactionFormState {
  const AddTransactionFormState._();

  const factory AddTransactionFormState({
    required String title,
    required String description,
    required double amount,
    required DateTime date,
  }) = _AddTransactionFormState;

  factory AddTransactionFormState.initial() {
    return AddTransactionFormState(
      title: '',
      description: '',
      amount: 0,
      date: DateTime.now(),
    );
  }

  factory AddTransactionFormState.add(Transaction transaction) {
    return AddTransactionFormState(
      title: transaction.title,
      description: transaction.notes ?? '',
      amount: transaction.amount,
      date: transaction.transactionDate,
    );
  }
}
