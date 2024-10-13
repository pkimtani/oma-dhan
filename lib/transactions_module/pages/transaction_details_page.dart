import 'package:apps/core/widgets/navbar_icon_button.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class TransactionDetailsPage extends StatelessWidget {
  final Transaction _transaction;

  const TransactionDetailsPage({super.key, required Transaction transaction})
      : _transaction = transaction;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // if the title is too long, it will be replaced with '...'
        middle: Text(
          _transaction.title,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          // Adjust to fit content size
          children: [
            NavbarIconButton(
              icon: CupertinoIcons.square_pencil,
              onPressed: () {},
              iconText: 'Edit',
            )
          ],
        ),
      ),
      child: Column(
        children: [
          // const Padding(padding: EdgeInsets.only(top: 10)),
          CupertinoFormSection.insetGrouped(
            header: const Text('Transaction Details'),
            children: [
              CupertinoFormRow(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.cart,
                      semanticLabel: 'Cart icon',
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Text(_transaction.title),
                    )
                  ],
                ),
              ),
              CupertinoFormRow(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.money_euro),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        _transaction.amount.toString(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              CupertinoFormRow(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.calendar),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        DateFormat.yMMMMEEEEd()
                            .format(_transaction.transactionDate),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              CupertinoFormRow(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.person),
                    const SizedBox(width: 20),
                    Expanded(
                      // TODO: find username from user id
                      child: Text(
                        'Paid by: ${_transaction.user}',
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          CupertinoFormSection.insetGrouped(
            header: const Text('Other Details'),
            children: [
              CupertinoFormRow(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.textbox),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Text(_transaction.notes ?? ''),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
