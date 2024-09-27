import 'package:apps/transactions_module/models/transaction.dart';

abstract class TransactionAPI {
  const TransactionAPI();

  Stream<List<Transaction>> getTransactions();
  Future<Transaction> getTransaction();
  Future<void> createTransaction(NewTransaction transaction);
  Future<Transaction> updateTransaction(Transaction transaction);
  Future<void> deleteTransaction(Transaction transaction);
}
