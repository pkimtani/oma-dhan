import 'dart:math';

import 'package:apps/core/data.dart';
import 'package:apps/core/models/currency.dart';
import 'package:apps/database/local_db.dart';
import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
import 'package:apps/transactions_module/interfaces/transactions_api.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:apps/user-module/user_data.dart';
import 'package:drift/drift.dart';
import 'package:faker_dart/faker_dart.dart';

class TransactionData extends Data implements TransactionAPI {
  @override
  final bool mockData;

  @override
  final LocalDB? database;

  TransactionData({this.mockData = false, this.database});

  @override
  Future<List<Transaction>> getTransactions() async {
    late List<Transaction> transactions;

    if (mockData) {
      transactions = await _getSampleData();
    } else if (database != null) {
      transactions = await database!.select(database!.transactionTable).get();
    }

    return transactions;
  }

  @override
  Future<void> createTransaction(Transaction transaction) async {
    if (database == null) {
      database!.transaction(() async {
        await database!
            .into(database!.transactionTable)
            .insert(TransactionTableCompanion(
              title: Value(transaction.title),
              amount: Value(transaction.amount),
              notes: Value(transaction.notes),
              transactionType: Value(transaction.transactionType),
              currency: Value(transaction.currency),
              transactionDate: Value(transaction.transactionDate),
            ));
      });
    }
  }

  @override
  Future<void> deleteTransaction(Transaction transaction) {
    // TODO: implement deleteTransaction
    throw UnimplementedError();
  }

  @override
  Future<Transaction> getTransaction() {
    // TODO: implement getTransaction
    throw UnimplementedError();
  }

  @override
  Future<Transaction> updateTransaction(Transaction transaction) {
    // TODO: implement updateTransaction
    throw UnimplementedError();
  }

  _getSampleData([int? total]) async {
    final faker = Faker.instance;
    total ??= faker.datatype.number(min: 1, max: 100);
    final User sampleUser =
        await (UserData(mockData: true, database: null)).getUser();

    return List.generate(total, (ignored) {
      final user = sampleUser;
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
