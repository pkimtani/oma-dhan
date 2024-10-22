import 'package:apps/user-module/events/users_event.dart';
import 'package:apps/user-module/interfaces/user_repository_interface.dart';
import 'package:apps/user-module/states/users_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UserRepositoryInterface _userRepository;

  UsersBloc({required UserRepositoryInterface userRepository})
      : _userRepository = userRepository,
        super(
          const UsersState(
            status: UsersStateStatus.initial,
          ),
        ) {
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
        emit(const UsersState(
          status: UsersStateStatus.initial,
        ));
        return;
      }

      emit(UsersState(
        status: UsersStateStatus.loaded,
        users: users,
      ));
    } catch (e) {
      add(UsersEvent.error(e.toString()));
    }
  }

  void _errorLoadingUsers(
      ErrorLoadingUsersEvent event, Emitter<UsersState> emit) {
    emit(UsersState(
      status: UsersStateStatus.error,
      message: event.message ?? 'Error loading user(s)',
    ));
  }
}
