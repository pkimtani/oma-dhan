import 'package:apps/user-module/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.freezed.dart';

@freezed
class UsersState with _$UsersState {
  const UsersState._();

  const factory UsersState({
    List<User>? users,
    String? message,
  }) = _UsersState;

  factory UsersState.initial() => const UsersState(users: [], message: null);
  factory UsersState.loading() => const UsersState(users: [], message: null);
  factory UsersState.loaded(List<User> users) =>
      UsersState(users: users, message: null);

  factory UsersState.error(String message) =>
      UsersState(users: [], message: message);
}
