import 'package:apps/user-module/models/user_type.dart';
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
}
