import 'package:apps/database/database_cubit.dart';
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
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<TransactionRepository>(
        create: (BuildContext context) {
          final database = context.read<DatabaseCubit>();
          return TransactionRepository(
            database: database.state,
          );
        },
        child: BlocProvider(
          create: (BuildContext context) => TransactionsBloc(
            transactionRepository: context.read<TransactionRepository>(),
          )..add(const TransactionsEvent.loadAll()),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
        ));
  }
}
