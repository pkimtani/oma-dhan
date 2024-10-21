import 'package:apps/database/local_db.dart';
import 'package:apps/user-module/interfaces/user_repository_interface.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:apps/user-module/user_data.dart';
import 'package:drift/drift.dart';

class UserRepository implements UserRepositoryInterface {
  final LocalDB _database;
  final UserData _userData = UserData(mockData: true);

  UserRepository({required LocalDB localDB}) : _database = localDB;

  @override
  Future<List<User>> getUsers() async {
    try {
      // Call the UserData -> getUsers method
      final List<User> users = await _userData.getUsers();

      // upsert the users into the local database
      await _database.transaction(() async {
        for (final user in users) {
          await _database.into(_database.userTable).insert(
                UserTableCompanion(
                  id: Value(user.id),
                  username: Value(user.username),
                  firstName: Value(user.firstName),
                  lastName: Value(user.lastName),
                  email: Value(user.email),
                  createdAt: Value(user.createdAt),
                ),
              );
        }
      });

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
