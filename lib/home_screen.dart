import 'package:apps/transactions_list.dart';
import 'package:apps/transactions_module/pages/transaction_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      child: const TransactionsList(),
    );
  }
}
