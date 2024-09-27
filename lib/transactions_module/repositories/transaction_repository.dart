import 'package:apps/database/local_db.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:drift/drift.dart';

class TransactionRepository {
  final LocalDB _database;

  TransactionRepository({required LocalDB database}) : _database = database;

  Stream<List<Transaction>> getTransactionsInStream() async* {
    yield* _database.select(_database.transactionTable).watch();
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

  /// Save a transaction
  Future<void> createTransaction(NewTransaction transaction) async {
    try {
      await _database.transaction(() async {
        await _database
            .into(_database.transactionTable)
            .insert(TransactionTableCompanion(
              title: Value(transaction.title),
              amount: Value(transaction.amount),
              notes: Value.absentIfNull(transaction.notes),
              user: Value(transaction.user),
              transactionType: Value(transaction.transactionType),
              currency: Value.absentIfNull(transaction.currency),
              transactionDate: Value(transaction.transactionDate),
            ));
      });
    } catch (e) {
      rethrow;
    }
  }
}
