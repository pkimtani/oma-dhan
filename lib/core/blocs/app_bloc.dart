import 'package:apps/core/events/app_event.dart';
import 'package:apps/core/states/app_state.dart';
import 'package:apps/user-module/models/user.dart' as oma_dhan_user;
import 'package:authentication/authentication.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension on FirebaseUser {
  oma_dhan_user.User get toOmaDhanUser => oma_dhan_user.User(
        id: uid ?? oma_dhan_user.User.nullUser.id,
        email: email ?? oma_dhan_user.User.nullUser.email,
        firstName: displayName ?? oma_dhan_user.User.nullUser.firstName,
        lastName: '',
        profilePicUrl:
            profilePicUrl ?? oma_dhan_user.User.nullUser.profilePicUrl,
        createdAt: DateTime.now(),
      );
}

class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthenticationRepository _authenticationRepository;

  AppBloc({required AuthenticationRepository authenticationRepository})
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
      _authenticationRepository.user,
      onData: (FirebaseUser authenticatedUser) {
        final authenticatedOmaDhanUser = authenticatedUser.toOmaDhanUser;
        if (oma_dhan_user.User.nullUser.id != authenticatedOmaDhanUser.id) {
          emit(AppState.authenticated(authenticatedOmaDhanUser));
        } else {
          emit(AppState.unauthenticated(null));
        }
      },
      onError: (error, stack) {
        if (kDebugMode) {
          print('Error: $error');
          print(stack);
        }

        add(const AppEvent.authenticationError(
            'Error getting authentication status'));
      },
    );
  }

  void _unAuthenticateUser(AppEvent event, Emitter<AppState> emit) =>
      emit(AppState.unauthenticated(null));

  void _authenticationError(AuthenticationError event, Emitter<AppState> emit) {
    emit(AppState.unauthenticated(event.message));
  }
}
