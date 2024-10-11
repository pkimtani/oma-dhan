import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    String? profilePicUrl,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static User get nullUser => User(
        id: '',
        username: 'no-user',
        firstName: 'No',
        lastName: 'User',
        email: 'user@example.com',
        createdAt: DateTime.now(),
      );
}
