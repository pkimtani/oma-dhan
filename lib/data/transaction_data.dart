import 'dart:math';

import 'package:apps/data/data.dart';
import 'package:apps/models/user.dart';
import 'package:apps/transactions_module/interfaces/transactions_api.dart';
import 'package:apps/transactions_module/models/transaction_type.dart';
import 'package:apps/utils/local_db.dart';
import 'package:faker_dart/faker_dart.dart';

class TransactionData extends Data implements TransactionAPI {
  @override
  final bool mockData;

  final database = LocalDB();

  TransactionData({this.mockData = false});

  @override
  Stream<List<UserTransactionData>> getTransactions() async* {
    if (mockData) {
      final transactions = await _getSampleData();
      yield transactions;
    } else {
      final transactions =
          await database.select(database.userTransaction).get();
      yield transactions;
    }
  }

  _getSampleData([int? total]) async {
    final faker = Faker.instance;
    total ??= faker.datatype.number(min: 1, max: 100);

    return List.generate(total, (ignored) {
      final user = (User.getSampleData(1)).first;
      final title = faker.commerce.productName();
      final amount = faker.datatype.number(min: 1, max: 10000).toDouble();
      final transactionType =
          TransactionType.all[Random().nextInt(TransactionType.all.length)];
      final date = faker.date.past(DateTime.now(), rangeInYears: 1);

      return UserTransactionData(
        id: Random().nextInt(1000),
        user: 1, // TODO: Replace with user.id
        title: title,
        amount: amount,
        transactionType: transactionType,
        transactionDate: date,
        createdAt: date,
      );
    });
  }

  @override
  Stream<void> createTransaction(UserTransactionData transaction) {
    // TODO: implement createTransaction
    throw UnimplementedError();
  }

  @override
  Stream<void> deleteTransaction(UserTransactionData transaction) {
    // TODO: implement deleteTransaction
    throw UnimplementedError();
  }

  @override
  Stream<UserTransactionData> getTransaction() {
    // TODO: implement getTransaction
    throw UnimplementedError();
  }

  @override
  Stream<UserTransactionData> updateTransaction(
      UserTransactionData transaction) {
    // TODO: implement updateTransaction
    throw UnimplementedError();
  }
}
