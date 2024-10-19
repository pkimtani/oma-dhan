import 'package:apps/database/user_table.dart';
import 'package:apps/user-module/models/user_friends.dart';
import 'package:drift/drift.dart';

@UseRowClass(UserFriends)
class UserFriendsTable extends Table {
  @override
  String get tableName => 'user_friends';

  @ReferenceName('userTableUser')
  TextColumn get userId => text().references(UserTable, #id)();
  @ReferenceName('userTableFriendUser')
  TextColumn get friendId => text().references(UserTable, #id)();
}
