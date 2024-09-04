import 'package:apps/core/models/currency_convertor.dart';
import 'package:apps/database/user_table.dart';
import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

@UseRowClass(Transaction)
class TransactionTable extends Table {
  @override
  String get tableName => 'transaction';

  TextColumn get id => text().clientDefault(() => const Uuid().v8())();
  TextColumn get user => text().references(UserTable, #id)();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  RealColumn get amount => real()();
  TextColumn get transactionType => textEnum<TransactionTypeEnum>()
      .withDefault(Constant(TransactionTypeEnum.expense.toString()))();
  TextColumn get notes => text().withDefault(const Constant(''))();
  TextColumn get currency => text().map(const CurrencyConverter())();
  DateTimeColumn get transactionDate =>
      dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
}
