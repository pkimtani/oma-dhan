import 'package:apps/transactions_module/events/transactions_event.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/states/transactions_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final TransactionRepository _transactionRepository;

  TransactionsBloc({required TransactionRepository transactionRepository})
      : _transactionRepository = transactionRepository,
        super(const TransactionsState(
            transactionStatus: TransactionsStatus.initial)) {
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
      emit(state.copyWith(transactionStatus: TransactionsStatus.fetching));

      await emit.forEach(
        _transactionRepository.streamTransactions(),
        onData: (transactions) {
          if (transactions.isEmpty) {
            return state.copyWith(
              transactionStatus: TransactionsStatus.initial,
              transactions: [],
            );
          }
          print("(onDate) Stream is done: ${emit.isDone}");
          return state.copyWith(
            transactionStatus: TransactionsStatus.fetchedSuccessfully,
            transactions: transactions,
          );
        },
        onError: (e, s) {
          if (kDebugMode) {
            print('Error loading transactions: $e');
          }

          print("(onError) Stream is done: ${emit.isDone}");

          return state.copyWith(
            transactionStatus: TransactionsStatus.fetchingFailed,
            message: 'Error loading transaction(s)',
          );
        },
      );
    } catch (e) {
      add(const TransactionsEvent.error('Error loading transaction(s)'));
    }
  }

  void _errorLoadingTransactions(
      ErrorLoadingTransactionsEvent event, Emitter<TransactionsState> emit) {
    emit(state.copyWith(
      transactionStatus: TransactionsStatus.fetchingFailed,
      message: event.message ?? 'Error loading transaction(s)',
    ));
  }
}
