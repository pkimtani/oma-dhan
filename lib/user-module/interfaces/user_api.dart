import 'package:apps/user-module/models/user.dart';

abstract class UserAPI {
  const UserAPI();

  Future<List<User>> getUsers();
  Future<User> getUser();
  Future<void> createUser(User user);
  Future<void> updateUser(User user);
  Future<void> deleteUser(User user);
}
