import 'package:apps/core/blocs/login_bloc.dart';
import 'package:apps/core/events/login_event.dart';
import 'package:apps/core/pages/signup_screen.dart';
import 'package:apps/core/states/login_state.dart';
import 'package:apps/core/widgets/alert.dart';
import 'package:apps/core/widgets/navbar_icon_button.dart';
import 'package:apps/core/widgets/password_field_form_row.dart';
import 'package:apps/core/widgets/text_field_form_row.dart';
import 'package:authentication/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  final AuthenticationRepositoryInterface _authenticationRepository;

  const LoginScreen(
      {super.key,
      required AuthenticationRepositoryInterface authenticationRepository})
      : _authenticationRepository = authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (context) =>
            LoginBloc(authenticationRepository: _authenticationRepository)
              ..add(const InitLogin()),
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            final LoginBloc loginBloc = context.read<LoginBloc>();
            return BlocListener<LoginBloc, LoginState>(
              listenWhen: (previous, current) => current.status.isLoginError,
              listener: (context, state) => showAlert(
                context: context,
                title: 'Login Error',
                content: state.errorMessage ?? 'An error occurred',
                showConfirmButton: false,
              ),
              child: CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  leading: NavbarIconButton(
                    icon: CupertinoIcons.person_add,
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              const SignupScreen(),
                        ),
                      );
                    },
                    iconText: 'Sign up',
                  ),
                  middle: const Text('Login'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    // Adjust to fit content size
                    children: [
                      state.status.isLoggingIn
                          ? const CupertinoActivityIndicator()
                          : NavbarIconButton(
                              icon: CupertinoIcons.check_mark,
                              onPressed: () => loginBloc.add(const Login()),
                              iconText: 'Login',
                            ),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    CupertinoFormSection.insetGrouped(
                      header: const Text('Login with email and password:'),
                      children: [
                        TextFieldFormRow(
                          placeholder: 'email@example.com',
                          icon: CupertinoIcons.mail,
                          onChanged: (String? value) =>
                              loginBloc.add(EmailChanged(value)),
                          errorMessage: state.email.error,
                          helperText: 'Enter your email address',
                        ),
                        PasswordField(
                          helperText: 'Enter your password',
                          errorMessage: state.password.error,
                          onChanged: (String? value) =>
                              loginBloc.add(PasswordChanged(value)),
                        ),
                      ],
                    ),
                    // TODO: Add social sign-in provider icon(s)
                    // CupertinoFormSection.insetGrouped(
                    //   header: const Text('Or login with:'),
                    //   // TODO: set background colour to current theme mode
                    //   decoration: BoxDecoration(
                    //     color: Theme.of(context).brightness == Brightness.dark
                    //         ? Colors.black
                    //         : Colors.white,
                    //   ),
                    //   children: [
                    //     const SizedBox(height: 20),
                    //     IconButton.outlined(
                    //       onPressed: () {},
                    //       iconSize: 40,
                    //       icon: const Icon(CupertinoIcons.add),
                    //     ),
                    //     const SizedBox(height: 20),
                    //   ],
                    // ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
