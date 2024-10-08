import 'package:apps/core/app.bloc_observer.dart';
import 'package:apps/core/pages/home_screen.dart';
import 'package:apps/database/database_cubit.dart';
import 'package:apps/transactions_module/blocs/transactions_bloc.dart';
import 'package:apps/transactions_module/events/transactions_event.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();

  runApp(
    BlocProvider(
        create: (BuildContext context) => DatabaseCubit(),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'OmaDhan';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: appTitle,
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemBlue,
        barBackgroundColor: CupertinoColors.black,
        scaffoldBackgroundColor: CupertinoColors.black,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: CupertinoColors.white),
        ),
      ),
      home: SafeArea(
        child: RepositoryProvider(
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
            child: const HomeScreen(title: appTitle),
          ),
        ),
      ),
    );
  }
}
