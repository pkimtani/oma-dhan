import 'package:apps/transactions_module/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionListItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionListItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: const Icon(Icons.money),
        title: Text(transaction.title),
        // TODO: fix these
        // subtitle: Text('Paid by: ${transaction.user.name.fullName}'),
        // trailing: Text(transaction.currency.symbol + transaction.amount.toString()),
      ),
    );
  }
}
