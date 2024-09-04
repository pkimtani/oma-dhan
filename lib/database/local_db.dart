import 'package:apps/core/models/currency.dart';
import 'package:apps/core/models/currency_convertor.dart';
import 'package:apps/database/transaction_table.dart';
import 'package:apps/database/user_table.dart';
import 'package:apps/transactions_module/enums/transaction_type_enum.dart';
import 'package:apps/transactions_module/models/transaction.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:apps/user-module/models/user_type.dart';
import 'package:apps/user-module/models/user_type_converter.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:uuid/uuid.dart';

part 'local_db.g.dart';

@DriftDatabase(tables: [UserTable, TransactionTable])
class LocalDB extends _$LocalDB {
  LocalDB() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'my_database');
  }
}
