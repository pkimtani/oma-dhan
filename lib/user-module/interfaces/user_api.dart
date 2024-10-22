import 'package:apps/user-module/models/user.dart';

abstract class UserAPI {
  const UserAPI();

  Future<List<User>> getUsers();

  Future<User> getUserProfile(User? user);
}
