import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.init() = InitLogin;

  const factory LoginEvent.emailChanged(String? email) = EmailChanged;
  const factory LoginEvent.passwordChanged(String? password) = PasswordChanged;

  const factory LoginEvent.login() = Login;
  const factory LoginEvent.loggedIn() = LoggedIn;
  const factory LoginEvent.loginError(String message) = LoginError;
}
