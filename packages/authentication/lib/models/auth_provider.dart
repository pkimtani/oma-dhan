import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_provider.freezed.dart';
part 'auth_provider.g.dart';

@freezed
sealed class AuthProvider with _$AuthProvider {
  const AuthProvider._();

  const factory AuthProvider.emailAndPassword() = EmailAndPassword;
  const factory AuthProvider.google() = Google;
  const factory AuthProvider.facebook() = Facebook;
  const factory AuthProvider.apple() = Apple;
  const factory AuthProvider.custom() = Custom;

  String get name => switch (this) {
        EmailAndPassword() => 'Email and Password',
        Google() => 'Google',
        Facebook() => 'Facebook',
        Apple() => 'Apple',
        Custom() => 'Custom',
      };

  factory AuthProvider.fromJson(Map<String, dynamic> json) =>
      _$AuthProviderFromJson(json);
}
