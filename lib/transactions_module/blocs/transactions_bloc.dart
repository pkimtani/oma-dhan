import 'package:apps/transactions_module/events/transactions_event.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/states/transactions_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final TransactionRepository transactionRepository;

  TransactionsBloc({required this.transactionRepository})
      : super(const TransactionsState.initial()) {
    on<TransactionsEvent>(
      (event, emit) => event.map(
        loadAll: (event) => _loadTransactions(event, emit),
        error: (event) => _errorLoadingTransactions(event, emit),
      ),
      transformer: null,
    );
  }

  Future<void> _loadTransactions(
      TransactionsEvent event, Emitter<TransactionsState> emit) async {
    try {
      final transactions = await transactionRepository.getAllTransactions();

      if (transactions.isEmpty) {
        emit(const TransactionsState.initial());
        return;
      }

      emit(TransactionsState.fetchSuccess(transactions));
    } catch (e) {
      emit(TransactionsState.fetchError(e.toString()));
    }
  }

  void _errorLoadingTransactions(
      ErrorLoadingTransactionsEvent event, Emitter<TransactionsState> emit) {
    emit(TransactionsState.fetchError(
        event.message ?? 'Error loading transaction(s)'));
  }
}
