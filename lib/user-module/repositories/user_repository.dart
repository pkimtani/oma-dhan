import 'package:apps/user-module/interfaces/user_api.dart';
import 'package:apps/user-module/models/user.dart';

class UserRepository {
  final UserAPI _userAPI;

  UserRepository({required UserAPI userApi}) : _userAPI = userApi;

  Future<List<User>> getUsers() async {
    return await _userAPI.getUsers();
  }
}
