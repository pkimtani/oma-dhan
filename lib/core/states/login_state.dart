import 'package:apps/core/validators/form_field_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginStatus { initial, loggingIn, loggedIn, loginError }

extension LoginStatusX on LoginStatus {
  bool get isInitial => this == LoginStatus.initial;
  bool get isLoggingIn => this == LoginStatus.loggingIn;
  bool get isLoggedIn => this == LoginStatus.loggedIn;
  bool get isLoginError => this == LoginStatus.loginError;
}

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    required LoginStatus status,
    @Default(FormFieldValue(value: null)) FormFieldValue email,
    @Default(FormFieldValue(value: null)) FormFieldValue password,
    String? errorMessage,
  }) = _LoginState;
}
