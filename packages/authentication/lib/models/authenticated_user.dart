import 'package:authentication/models/auth_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user.freezed.dart';
part 'authenticated_user.g.dart';

@freezed
class AuthenticatedUser with _$AuthenticatedUser {
  const factory AuthenticatedUser({
    String? id,
    AuthProvider? provider,
    String? username,
    String? fireName,
    String? lastName,
    String? email,
    String? profilePicUrl,
  }) = _AuthenticatedUser;

  factory AuthenticatedUser.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatedUserFromJson(json);

  factory AuthenticatedUser.nullUser() {
    return const AuthenticatedUser(
      id: '',
      provider: AuthProvider.emailAndPassword(),
      username: '',
      fireName: '',
      lastName: '',
      email: '',
      profilePicUrl: '',
    );
  }
}
