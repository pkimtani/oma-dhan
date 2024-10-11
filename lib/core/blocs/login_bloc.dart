import 'package:apps/core/events/login_event.dart';
import 'package:apps/core/states/login_state.dart';
import 'package:apps/core/validators/form_field_value.dart';
import 'package:authentication/authentication.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationRepositoryInterface _authenticationRepository;

  LoginBloc(
      {required AuthenticationRepositoryInterface authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(const LoginState(status: LoginStatus.initial)) {
    on<LoginEvent>((event, emit) => event.map(
          init: (_) => null,
          emailChanged: (event) => _formChanged(event, emit),
          passwordChanged: (event) => _formChanged(event, emit),
          login: (event) => _login(event, emit),
          loggedIn: (event) => null,
          loginError: (event) => _loginError(event, emit),
        ));
  }

  void _formChanged(LoginEvent event, Emitter<LoginState> emit) {
    switch (event) {
      case EmailChanged(:final email):
        emit(state.copyWith(
          status: LoginStatus.initial,
          email: FormFieldValue.email(email),
        ));
        break;
      case PasswordChanged(:final password):
        emit(state.copyWith(
          status: LoginStatus.initial,
          password: FormFieldValue.requiredText(password),
        ));
        break;
      default:
        add(const LoginEvent.loginError('Invalid event'));
    }
  }

  void _login(LoginEvent event, Emitter<LoginState> emit) async {
    final LoginState loginFormState = state.copyWith(
      status: LoginStatus.loggingIn,
      email: FormFieldValue.email(state.email.value),
      password: FormFieldValue.requiredText(state.password.value),
    );

    if (loginFormState.email.error != null ||
        loginFormState.password.error != null) {
      emit(loginFormState.copyWith(status: LoginStatus.initial));
      return;
    }

    try {
      await _authenticationRepository.loginWithEmailAndPassword(
        loginFormState.email.value!,
        loginFormState.password.value!,
      );

      emit(loginFormState.copyWith(status: LoginStatus.loggedIn));
    } on LoginWithEmailAndPasswordException catch (error) {
      add(LoginError('Login failed: ${error.message}'));
      return;
    } catch (_) {
      add(const LoginError('An unknown error occurred'));
      return;
    }
  }

  void _loginError(LoginError event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      status: LoginStatus.loginError,
      errorMessage: event.message,
    ));
  }
}
