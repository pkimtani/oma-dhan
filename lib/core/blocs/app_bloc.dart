import 'package:apps/core/events/app_event.dart';
import 'package:apps/core/states/app_state.dart';
import 'package:apps/user-module/models/user.dart' as oma_dhan_user;
import 'package:authentication/authentication.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension on AuthenticatedUser {
  oma_dhan_user.User get toOmaDhanUser => oma_dhan_user.User(
        id: id ?? oma_dhan_user.User.nullUser.id,
        username: username ?? '',
        email: email ?? '',
        firstName: fireName ?? '',
        lastName: lastName ?? '',
        profilePicUrl: profilePicUrl ?? '',
        createdAt: DateTime.now(),
      );
}

class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthenticationRepositoryInterface _authenticationRepository;

  AppBloc({required AuthenticationRepositoryInterface authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(AppState.unauthenticated(null)) {
    on<AppEvent>(
      (event, emit) => event.map(
        getAuthenticationStatus: (event) =>
            _getAuthenticationStatus(event, emit),
        authenticateUser: (event) => null,
        unAuthenticateUser: (event) => _unAuthenticateUser(event, emit),
        authenticationError: (event) => _authenticationError(event, emit),
      ),
      transformer: null,
    );
  }

  void _getAuthenticationStatus(AppEvent event, Emitter<AppState> emit) async {
    await emit.onEach(
      _authenticationRepository.authenticatedUser,
      onData: (AuthenticatedUser authenticatedUser) {
        final authenticatedOmaDhanUser = authenticatedUser.toOmaDhanUser;
        if (oma_dhan_user.User.nullUser.id != authenticatedOmaDhanUser.id) {
          emit(AppState.authenticated(authenticatedOmaDhanUser));
        } else {
          emit(AppState.unauthenticated(null));
        }
      },
      onError: (error, stack) {
        add(const AppEvent.authenticationError(
            'Error getting authentication status'));
      },
    );
  }

  void _unAuthenticateUser(AppEvent event, Emitter<AppState> emit) {
    try {
      _authenticationRepository.logout();
      emit(AppState.unauthenticated(null));
    } catch (_) {
      add(const AppEvent.authenticationError('Error logging out'));
    }
  }

  void _authenticationError(AuthenticationError event, Emitter<AppState> emit) {
    emit(AppState.unauthenticated(event.message));
  }
}
