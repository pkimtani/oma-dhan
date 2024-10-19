import 'package:apps/user-module/models/user.dart';

abstract interface class UserRepositoryInterface {
  Future<List<User>> getUsers();

  Future<void> addFriend(User loggedInUser, User friend);
  Future<List<User>> getFriends(User loggedInUser);

  Future<List<User>> findFriends(
      String? userId, String? friendName, String? friendEmail);
}
