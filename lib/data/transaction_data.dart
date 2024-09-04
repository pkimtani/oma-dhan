import 'dart:math';

import 'package:apps/core/models/currency.dart';
import 'package:apps/data/data.dart';
import 'package:apps/database/local_db.dart';
import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
import 'package:apps/transactions_module/interfaces/transactions_api.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:drift/drift.dart';
import 'package:faker_dart/faker_dart.dart';

class TransactionData extends Data implements TransactionAPI {
  @override
  final bool mockData;

  final database = LocalDB();

  TransactionData({this.mockData = false});

  @override
  Stream<List<Transaction>> getTransactions() async* {
    if (mockData) {
      final transactions = await _getSampleData();
      yield transactions;
    } else {
      final transactions =
          await database.select(database.transactionTable).get();
      yield transactions;
    }
  }

  @override
  Stream<void> createTransaction(Transaction transaction) {
    database.transaction(() async {
      await database
          .into(database.transactionTable)
          .insert(TransactionTableCompanion(
            title: Value(transaction.title),
            amount: Value(transaction.amount),
            notes: Value(transaction.notes),
            transactionType: Value(transaction.transactionType),
            currency: Value(transaction.currency),
            transactionDate: Value(transaction.transactionDate),
          ));
    });

    return Stream.value(null);
  }

  @override
  Stream<void> deleteTransaction(Transaction transaction) {
    // TODO: implement deleteTransaction
    throw UnimplementedError();
  }

  @override
  Stream<Transaction> getTransaction() {
    // TODO: implement getTransaction
    throw UnimplementedError();
  }

  @override
  Stream<Transaction> updateTransaction(Transaction transaction) {
    // TODO: implement updateTransaction
    throw UnimplementedError();
  }

  _getSampleData([int? total]) async {
    final faker = Faker.instance;
    total ??= faker.datatype.number(min: 1, max: 100);

    return List.generate(total, (ignored) {
      final user = (User.getSampleData(1)).first;
      final title = faker.commerce.productName();
      final amount = faker.datatype.number(min: 1, max: 10000).toDouble();
      final transactionType = TransactionTypeEnum
          .values[Random().nextInt(TransactionTypeEnum.values.length)];
      final date = faker.date.past(DateTime.now(), rangeInYears: 1);

      return Transaction(
        id: Random().nextInt(1000).toString(),
        user: user.id,
        title: title,
        amount: amount,
        currency: const Currency.eur(),
        transactionType: transactionType,
        transactionDate: date,
        createdAt: date,
      );
    });
  }
}
