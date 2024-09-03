import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

class User extends Table {
  // @override
  // String get tableName => 'users';

  TextColumn get id => text().clientDefault(() => const Uuid().v8())();
  TextColumn get firstName => text().withLength(min: 1, max: 50)();
  TextColumn get lastName => text().withLength(min: 1, max: 50)();
  TextColumn get email => text().withLength(min: 1, max: 50)();
  TextColumn get password => text().withLength(min: 1, max: 50)();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
}
