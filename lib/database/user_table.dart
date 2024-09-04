import 'package:apps/user-module/models/user.dart';
import 'package:apps/user-module/models/user_type_converter.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

@UseRowClass(User)
class UserTable extends Table {
  @override
  String get tableName => 'user';

  TextColumn get id => text().clientDefault(() => const Uuid().v8())();
  TextColumn get firstName => text().withLength(min: 1, max: 50)();
  TextColumn get lastName => text().withLength(min: 1, max: 50)();
  TextColumn get userType => text().map(const UserTypeConverter())();
  TextColumn get email => text().withLength(min: 1, max: 50)();
  TextColumn get password => text().withLength(min: 1, max: 50)();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
}
