import 'package:apps/user-module/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

enum UserAuthenticationStatus { authenticated, unauthenticated }

@freezed
class AppState with _$AppState {
  const factory AppState(
      {required UserAuthenticationStatus userAuthenticationStatus,
      required User user,
      String? authenticationError}) = _AppState;

  factory AppState.authenticated(User user) => AppState(
        userAuthenticationStatus: UserAuthenticationStatus.authenticated,
        user: user,
        authenticationError: null,
      );

  factory AppState.unauthenticated(String? error) => AppState(
        userAuthenticationStatus: UserAuthenticationStatus.unauthenticated,
        user: User.nullUser,
        authenticationError: error,
      );
}
