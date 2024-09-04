import 'package:apps/transactions_module/models/transaction.dart';

abstract class TransactionAPI {
  const TransactionAPI();

  Future<List<Transaction>> getTransactions();
  Future<Transaction> getTransaction();
  Future<void> createTransaction(Transaction transaction);
  Future<Transaction> updateTransaction(Transaction transaction);
  Future<void> deleteTransaction(Transaction transaction);
}
