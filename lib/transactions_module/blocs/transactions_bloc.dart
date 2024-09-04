import 'package:apps/transactions_module/events/transactions_events.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/states/transactions_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final TransactionRepository transactionRepository;

  // switch to single event and handle sub-events under it:
  TransactionsBloc({required this.transactionRepository})
      : super(TransactionsState.initial()) {
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
        emit(TransactionsState.initial());
        return;
      }

      emit(TransactionsState.fetchSuccess(transactions));
    } catch (e) {
      emit(TransactionsState.fetchError(e.toString()));
    }
  }

  // TODO: pass value to error event so we can add the event instead of emitting the state
  void _errorLoadingTransactions(
      TransactionsEvent event, Emitter<TransactionsState> emit) {
    emit(TransactionsState.fetchError('Error loading transaction(s)'));
  }
}
