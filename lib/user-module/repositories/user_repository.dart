import 'package:apps/database/local_db.dart';
import 'package:apps/user-module/interfaces/user_repository_interface.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:drift/drift.dart';

class UserRepository implements UserRepositoryInterface {
  final LocalDB _database;

  UserRepository({required LocalDB localDB}) : _database = localDB;

  @override
  Future<List<User>> getUsers() async {
    try {
      return await _database.select(_database.userTable).get();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addFriend(User loggedInUser, User friend) {
    try {
      return _database.into(_database.userFriendsTable).insert(
            UserFriendsTableCompanion(
              userId: Value(loggedInUser.id),
              friendId: Value(friend.id),
            ),
          );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<User>> getFriends(User loggedInUser) {
    try {
      final query = _database.select(_database.userFriendsTable).join([
        innerJoin(
            _database.userTable,
            _database.userFriendsTable.userId
                .equalsExp(_database.userTable.id)),
      ])
        ..where(_database.userFriendsTable.userId.equals(loggedInUser.id));

      return query.map((row) => row.readTable(_database.userTable)).get();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<User>> findFriends(
      String? userId, String? friendName, String? friendEmail) {
    try {
      final query = _database.select(_database.userTable);

      if (userId != null && userId.isNotEmpty) {
        query.where((tbl) => tbl.id.equals(userId));
      }

      if (friendName != null && friendName.isNotEmpty) {
        query.where((tbl) =>
            tbl.firstName.like('%$friendName%') |
            tbl.lastName.like('%$friendName%') |
            tbl.username.like('%$friendName%'));
      }

      if (friendEmail != null && friendEmail.isNotEmpty) {
        query.where((tbl) => tbl.email.like('%$friendEmail%'));
      }

      return query.get();
    } catch (e) {
      rethrow;
    }
  }
}
