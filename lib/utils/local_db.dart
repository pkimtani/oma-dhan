import 'package:apps/user_table.dart';
import 'package:apps/utils/transaction_table.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'local_db.g.dart';

@DriftDatabase(tables: [User, UserTransaction])
class LocalDB extends _$LocalDB {
  LocalDB() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'my_database');
  }
}
