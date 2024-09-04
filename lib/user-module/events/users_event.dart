import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_event.freezed.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const UsersEvent._();

  const factory UsersEvent.loadAll() = LoadAllUsersEvent;
  const factory UsersEvent.error(String? message) = ErrorLoadingUsersEvent;
}
