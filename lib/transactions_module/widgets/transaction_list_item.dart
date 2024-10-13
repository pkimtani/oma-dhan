import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/transactions_module/pages/transaction_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionListItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionListItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        onTap: () {
          if (transaction.id == Transaction.nullTransaction.id) {
            return;
          }

          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => TransactionDetailsPage(
                transaction: transaction,
              ),
            ),
          );
        },
        leading: const Icon(Icons.money),
        title: Text(
          transaction.title,
          overflow: TextOverflow.ellipsis,
        ),
        // TODO: fix these
        // subtitle: Text('Paid by: ${transaction.user}'),
        // trailing: Text(transaction.currency.symbol + transaction.amount.toString()),
      ),
    );
  }
}
