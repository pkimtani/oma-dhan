import 'dart:math';

import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class UserType with _$UserType {
  const UserType._();

  const factory UserType({
    required String type,
  }) = _UserType;

  const factory UserType.individual() = _Individual;

  const factory UserType.group() = _Group;

  static List<UserType> all = const [UserType.individual(), UserType.group()];

  factory UserType.fromJson(Map<String, dynamic> json) =>
      _$UserTypeFromJson(json);
}

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

  static List<User> getSampleData([int? total]) {
    final faker = Faker.instance;
    total ??= faker.datatype.number(min: 1, max: 10);

    return List.generate(total, (ignored) {
      final email = faker.internet.email();
      final userType = UserType.all[Random().nextInt(UserType.all.length)];
      final date = faker.date.past(DateTime.now(), rangeInYears: 1);

      return User(
        id: faker.datatype.number.toString(),
        firstName: faker.name.firstName(),
        lastName: faker.name.lastName(),
        email: email,
        userType: userType,
        createdAt: date,
        password: 'password',
      );
    });
  }
}
