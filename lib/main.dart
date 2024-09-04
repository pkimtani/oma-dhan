import 'package:apps/core/app.bloc_observer.dart';
import 'package:apps/data/transaction_data.dart';
import 'package:apps/transactions_module/blocs/transactions_bloc.dart';
import 'package:apps/transactions_module/events/transactions_events.dart';
import 'package:apps/transactions_module/pages/grouped_transactions_list_view.dart';
import 'package:apps/transactions_module/pages/transaction_form.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/states/transactions_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'OmaDhan';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: appTitle,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemBlue,
        barBackgroundColor: CupertinoColors.black,
        scaffoldBackgroundColor: CupertinoColors.black,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: CupertinoColors.white),
        ),
      ),
      // theme: CupertinoThemeData(
      //   // primaryColor: CupertinoColors.systemBackground,
      //   // scaffoldBackgroundColor: CupertinoColors.secondarySystemBackground,
      //   barBackgroundColor: CupertinoColors.white,
      // ),
      home: SafeArea(
        child: HomeScreen(title: appTitle),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: const Icon(CupertinoIcons.line_horizontal_3),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (BuildContext context) => const AddNewTransaction(),
              ),
            );
          },
          icon: const Icon(CupertinoIcons.add),
        ),
      ),
      child: RepositoryProvider<TransactionRepository>(
          create: (BuildContext context) {
            return TransactionRepository(transactionAPI: TransactionData());
          },
          child: BlocProvider(
              create: (BuildContext context) => TransactionsBloc(
                  transactionRepository: context.read<TransactionRepository>())
                ..add(const TransactionsEvent.loadAll()),
              child: const ExpenseListWidget())),
    );
  }
}

class ExpenseListWidget extends StatelessWidget {
  const ExpenseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: BlocBuilder<TransactionsBloc, TransactionsState>(
        builder: (BuildContext context, TransactionsState state) {
          switch (state) {
            case TransactionsState.initial:
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            case TransactionsState.fetchSuccess:
              return GroupedTransactionsListView(
                transactions: state.transactions ?? [],
              );
            case TransactionsState.fetchError:
              return Center(
                child: Text(state.message ?? 'Error fetching transactions'),
              );
            default:
              return const Center(
                child: Text('Something went wrong! :('),
              );
          }
        },
      ),
    );
  }
}
