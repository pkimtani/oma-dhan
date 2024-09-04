import 'package:apps/user-module/events/users_event.dart';
import 'package:apps/user-module/repositories/user_repository.dart';
import 'package:apps/user-module/states/users_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UserRepository _userRepository;

  UsersBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(UsersState.initial()) {
    on<UsersEvent>(
      (event, emit) => event.map(
        loadAll: (event) => _loadUsers(event, emit),
        error: (event) => _errorLoadingUsers(event, emit),
      ),
      transformer: null,
    );
  }

  Future<void> _loadUsers(
      LoadAllUsersEvent event, Emitter<UsersState> emit) async {
    try {
      final users = await _userRepository.getUsers();

      if (users.isEmpty) {
        emit(UsersState.initial());
        return;
      }

      emit(UsersState.loaded(users));
    } catch (e) {
      add(UsersEvent.error(e.toString()));
    }
  }

  void _errorLoadingUsers(
      ErrorLoadingUsersEvent event, Emitter<UsersState> emit) {
    emit(UsersState.error(event.message ?? 'Error loading user(s)'));
  }
}
