import 'dart:math';

import 'package:apps/core/data.dart';
import 'package:apps/core/models/currency.dart';
import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
import 'package:apps/transactions_module/interfaces/transactions_api.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:apps/user-module/user_data.dart';
import 'package:faker_dart/faker_dart.dart';

class TransactionData extends Data implements TransactionAPI {
  @override
  final bool mockData;

  TransactionData({this.mockData = false});

  @override
  Stream<List<Transaction>> getTransactions() async* {
    late List<Transaction> transactions;

    if (mockData) {
      transactions = await _getSampleData();
    } else {
      // TODO: call the actual API
    }

    yield transactions;
  }

  @override
  Future<void> createTransaction(NewTransaction transaction) async {
    // TODO: implement createTransaction
    throw UnimplementedError();
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

  /// Generate list of sample/mock transactions for given total
  /// If total is not provided, a random number between 1 and 100 is used
  _getSampleData([int? total]) async {
    final faker = Faker.instance;
    total ??= faker.datatype.number(min: 1, max: 100);
    final User sampleUser =
        await (UserData(mockData: true)).getUserProfile(null);

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
