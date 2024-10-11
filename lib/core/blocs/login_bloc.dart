import 'package:apps/core/events/login_event.dart';
import 'package:apps/core/states/login_state.dart';
import 'package:apps/core/validators/form_field_value.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState(status: LoginStatus.initial)) {
    on<LoginEvent>((event, emit) => event.map(
          emailChanged: (event) => _formChanged(event, emit),
          passwordChanged: (event) => _formChanged(event, emit),
          loggingIn: (event) => _login(event, emit),
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
    await emit.forEach(
      stream,
      onData: (data) => state.copyWith(status: LoginStatus.loggedIn),
      onError: (e, s) => state.copyWith(
        status: LoginStatus.loginError,
        errorMessage: 'Error logging in',
      ),
    );
  }

  void _loginError(LoginError event, Emitter<LoginState> emit) {
    if (kDebugMode) {
      print('Login Error: ${event.message}');
    }

    emit(state.copyWith(
      status: LoginStatus.loginError,
      errorMessage: event.message,
    ));
  }
}
