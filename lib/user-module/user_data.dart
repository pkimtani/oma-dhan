import 'dart:math';

import 'package:apps/core/data.dart';
import 'package:apps/database/local_db.dart';
import 'package:apps/user-module/interfaces/user_api.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:apps/user-module/models/user_type.dart';
import 'package:faker_dart/faker_dart.dart';

class UserData extends Data implements UserAPI {
  @override
  final bool mockData;

  @override
  final LocalDB database;

  UserData({this.mockData = false, required this.database});

  @override
  Future<void> createUser(User user) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(User user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<User> getUser() async {
    late User user;

    if (mockData) {
      user = _getSampleData(1).first;
    } else {
      user = User.nullUser;
    }

    return user;
  }

  @override
  Future<List<User>> getUsers() async {
    late List<User> users;
    if (mockData) {
      users = _getSampleData();
    } else {
      users = await database.select(database.userTable).get();
    }

    return users;
  }

  @override
  Future<void> updateUser(User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  List<User> _getSampleData([int? total, User? userOverride]) {
    final faker = Faker.instance;
    total ??= faker.datatype.number(min: 1, max: 10);

    return List.generate(total, (ignored) {
      final fakeEmail = faker.internet.email();
      final userType = UserType.all[Random().nextInt(UserType.all.length)];
      final date = faker.date.past(DateTime.now(), rangeInYears: 1);

      return User(
        id: faker.datatype.number.toString(),
        firstName: userOverride?.firstName ?? faker.name.firstName(),
        lastName: userOverride?.lastName ?? faker.name.lastName(),
        email: userOverride?.email ?? fakeEmail,
        userType: userOverride?.userType ?? userType,
        createdAt: userOverride?.createdAt ?? date,
        password: userOverride?.password ?? 'password',
      );
    });
  }
}
