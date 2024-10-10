import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.freezed.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.getAuthenticationStatus() = GetAuthenticationStatus;
  const factory AppEvent.authenticateUser() = AuthenticateUser;
  const factory AppEvent.unAuthenticateUser() = UnauthenticateUser;
  const factory AppEvent.authenticationError(String message) =
      AuthenticationError;
}
