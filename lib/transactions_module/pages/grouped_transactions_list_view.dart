import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/widgets/transaction_list_item.dart';
import 'package:flutter/cupertino.dart';

class GroupedTransactionsListView extends StatelessWidget {
  final List<Transaction> _transactions;

  const GroupedTransactionsListView(
      {required List<Transaction> transactions, super.key})
      : _transactions = transactions;

  @override
  Widget build(BuildContext context) {
    final Map<DateTime, List<Transaction>> groupedTransactions =
        TransactionRepository.groupTransactionsByMonth(_transactions);

    final List<Widget> slivers = [];

    for (var date in groupedTransactions.keys) {
      slivers.add(SliverMainAxisGroup(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 10),
            sliver: SliverPersistentHeader(
              delegate: _StickyHeaderDelegate(date: date),
              pinned: true,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return TransactionListItem(
                    transaction: groupedTransactions[date]![index],
                  );
                },
                childCount: groupedTransactions[date]!.length,
              ),
            ),
          )
        ],
      ));
    }

    return CustomScrollView(
      slivers: slivers,
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final DateTime date;

  _StickyHeaderDelegate({required this.date});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: CupertinoColors.activeBlue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            _formatDate(date),
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 29.0;

  @override
  double get minExtent => 29.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
