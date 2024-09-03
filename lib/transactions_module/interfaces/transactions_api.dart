import 'package:apps/transactions_module/models/transaction.dart';

abstract class TransactionAPI {
  const TransactionAPI();

  Stream<List<Transaction>> getTransactions();
  Stream<Transaction> getTransaction();
  Stream<void> createTransaction(Transaction transaction);
  Stream<Transaction> updateTransaction(Transaction transaction);
  Stream<void> deleteTransaction(Transaction transaction);
}
