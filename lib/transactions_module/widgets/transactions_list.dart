import 'package:apps/transactions_module/blocs/transactions_bloc.dart';
import 'package:apps/transactions_module/events/transactions_event.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/states/transactions_state.dart';
import 'package:apps/transactions_module/widgets/grouped_transactions_list_view.dart';
import 'package:apps/transactions_module/widgets/transaction_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsList extends StatelessWidget {
  final TransactionRepository _transactionRepository;
  const TransactionsList(
      {super.key, required TransactionRepository transactionRepository})
      : _transactionRepository = transactionRepository;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: RepositoryProvider.value(
        value: _transactionRepository,
        child: BlocProvider(
          create: (context) => TransactionsBloc(
            transactionRepository: _transactionRepository,
          )..add(const LoadAllTransactionsEvent()),
          child: BlocBuilder<TransactionsBloc, TransactionsState>(
            builder: (BuildContext context, TransactionsState state) {
              switch (state.transactionStatus) {
                case TransactionsStatus.initial:
                  return TransactionListItem(
                      transaction: Transaction.nullTransaction);
                case TransactionsStatus.fetching:
                  return const Center(
                    child: CupertinoActivityIndicator(),
                  );
                case TransactionsStatus.fetchedSuccessfully:
                  return GroupedTransactionsListView(
                    transactions:
                        state.transactions ?? [Transaction.nullTransaction],
                    // transactions: state.transactions ?? [],
                  );
                case TransactionsStatus.fetchingFailed:
                  return Center(
                    child:
                        Text(state.message ?? 'Error loading transaction(s)'),
                  );
                default:
                  return const Center(
                    child: Text('Something went wrong! :('),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
