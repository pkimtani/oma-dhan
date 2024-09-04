import 'dart:math';

import 'package:apps/user-module/models/user_type.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    @Default(UserType.individual()) UserType userType,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static User get nullUser => User(
        id: '1',
        firstName: 'No',
        lastName: 'User',
        email: 'user@example.com',
        password: 'password',
        userType: const UserType.individual(),
        createdAt: DateTime.now(),
      );

  static List<User> getSampleData([int? total, User? userOverride]) {
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
