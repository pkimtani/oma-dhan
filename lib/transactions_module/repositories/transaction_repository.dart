import 'package:apps/transactions_module/interfaces/transactions_api.dart';
import 'package:apps/transactions_module/models/transaction.dart';

class TransactionRepository {
  final TransactionAPI _transactionAPI;

  TransactionRepository({required transactionAPI})
      : _transactionAPI = transactionAPI;

  /// Get all transactions
  Future<List<Transaction>> getAllTransactions() async {
    final List<Transaction> transactions = [];

    await for (final transactionsFromAPI in _transactionAPI.getTransactions()) {
      transactions.addAll(transactionsFromAPI);
    }

    return transactions;
  }

  /// Get all transactions grouped by month
  Future<Map<String, List<Transaction>>> getTransactionGroupedByMonth() async {
    final Map<String, List<Transaction>> transactionsGroupedByMonth = {};

    await for (final transactionsFromAPI in _transactionAPI.getTransactions()) {
      for (final transaction in transactionsFromAPI) {
        final month = transaction.transactionDate.month.toString();
        if (transactionsGroupedByMonth.containsKey(month)) {
          transactionsGroupedByMonth[month]!.add(transaction);
        } else {
          transactionsGroupedByMonth[month] = [transaction];
        }
      }
    }

    return transactionsGroupedByMonth;
  }
}
