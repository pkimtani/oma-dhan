import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/user_table.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

@UseRowClass(Transaction)
class UserTransaction extends Table {
  @override
  String get tableName => 'transaction';

  TextColumn get id => text().clientDefault(() => const Uuid().v8())();
  TextColumn get user => text().references(User, #id)();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  RealColumn get amount => real()();
  TextColumn get transactionType => textEnum<TransactionTypeEnum>()
      .withDefault(Constant(TransactionTypeEnum.expense.toString()))();
  TextColumn get notes => text().nullable()();
  // TextColumn get currency => textEnum<Currency>()();
  DateTimeColumn get transactionDate =>
      dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
}
