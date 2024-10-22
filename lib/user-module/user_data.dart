import 'package:apps/core/data.dart';
import 'package:apps/user-module/interfaces/user_api.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:faker_dart/faker_dart.dart';

class UserData extends Data implements UserAPI {
  @override
  final bool mockData;

  UserData({this.mockData = false});

  @override
  Future<List<User>> getUsers() async {
    List<User> users;

    if (mockData) {
      users = _getSampleData();
    } else {
      // TODO: call the actual API
      users = [];
    }

    return users;
  }

  @override
  Future<User> getUserProfile(User? user) {
    if (mockData) {
      return Future.value(_getSampleData(1).first);
    }

    // TODO: else; call the actual API and remove the return statement below
    return Future.value(User.nullUser);
  }

  ///
  /// Private methods
  ///

  List<User> _getSampleData([int? total, User? userOverride]) {
    final faker = Faker.instance;
    total ??= faker.datatype.number(min: 1, max: 10);

    return List.generate(total, (ignored) {
      final fakeEmail = faker.internet.email();
      final date = faker.date.past(DateTime.now(), rangeInYears: 1);

      return User(
        id: faker.datatype.uuid().toString(),
        // TODO: replace with username when the lib supports it
        username: userOverride?.username ?? faker.name.firstName(),
        firstName: userOverride?.firstName ?? faker.name.firstName(),
        lastName: userOverride?.lastName ?? faker.name.lastName(),
        email: userOverride?.email ?? fakeEmail,
        createdAt: userOverride?.createdAt ?? date,
      );
    });
  }
}
