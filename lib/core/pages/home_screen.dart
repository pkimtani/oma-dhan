import 'package:apps/transactions_module/pages/transaction_form.dart';
import 'package:apps/transactions_module/pages/transactions_list.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: const Icon(CupertinoIcons.line_horizontal_3),
        trailing: IconButton(
          onPressed: () {
            final TransactionRepository transactionRepository =
                context.read<TransactionRepository>();

            // TODO: why is the context.read<TransactionRepository>() not working inside the navigator -> CupertinoPageRoute -> builder?
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (BuildContext context) => AddNewTransaction(
                  transactionRepository: transactionRepository,
                ),
              ),
            );
          },
          icon: const Icon(CupertinoIcons.add),
        ),
      ),
      // child: const Text('Home screen'),
      child: TransactionsList(
        transactionRepository: context.read<TransactionRepository>(),
      ),
    );
  }
}
