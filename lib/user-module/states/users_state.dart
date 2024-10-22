import 'package:apps/user-module/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.freezed.dart';

enum UsersStateStatus { initial, loading, loaded, error }

extension UsersStateStatusX on UsersStateStatus {
  bool get isLoading => this == UsersStateStatus.loading;
  bool get isLoaded => this == UsersStateStatus.loaded;
  bool get isError => this == UsersStateStatus.error;
}

@freezed
class UsersState with _$UsersState {
  const UsersState._();

  const factory UsersState({
    required UsersStateStatus status,
    List<User>? users,
    String? message,
  }) = _UsersState;
}
