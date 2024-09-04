import 'package:apps/transactions_module/interfaces/transactions_api.dart';
import 'package:apps/transactions_module/models/transaction.dart';

class TransactionRepository {
  final TransactionAPI _transactionAPI;

  TransactionRepository({required transactionAPI})
      : _transactionAPI = transactionAPI;

  /// Get all transactions
  Future<List<Transaction>> getAllTransactions() async {
    return await _transactionAPI.getTransactions();
  }

  /// Group transactions by month
  static Map<DateTime, List<Transaction>> groupTransactionsByMonth(
      List<Transaction> transactions) {
    final Map<DateTime, List<Transaction>> transactionsGroupedByMonth = {};

    for (final transaction in transactions) {
      final month = DateTime(transaction.transactionDate.year,
          transaction.transactionDate.month, 1);

      if (transactionsGroupedByMonth.containsKey(month)) {
        transactionsGroupedByMonth[month]!.add(transaction);
      } else {
        transactionsGroupedByMonth[month] = [transaction];
      }
    }

    return transactionsGroupedByMonth;
  }
}
