import 'package:apps/core/app.bloc_observer.dart';
import 'package:apps/core/blocs/app_bloc.dart';
import 'package:apps/core/events/app_event.dart';
import 'package:apps/core/pages/home_screen.dart';
import 'package:apps/core/pages/login_screen.dart';
import 'package:apps/core/states/app_state.dart';
import 'package:apps/database/database_cubit.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:authentication/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();

  await Authentication.init();

  final AuthenticationRepository authenticationRepository =
      AuthenticationRepository(null);
  await authenticationRepository.user.first;

  runApp(MyApp(authenticationRepository: authenticationRepository));
}

class MyApp extends StatelessWidget {
  final AuthenticationRepository _authenticationRepository;

  const MyApp(
      {super.key, required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository;

  static const appTitle = 'OmaDhan';

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => DatabaseCubit(),
          ),
          BlocProvider(
            create: (context) => AppBloc(
              authenticationRepository: _authenticationRepository,
            )..add(const AppEvent.getAuthenticationStatus()),
          ),
        ],
        child: CupertinoApp(
          title: appTitle,
          theme: const CupertinoThemeData(
            brightness: Brightness.dark,
            primaryColor: CupertinoColors.systemBlue,
            barBackgroundColor: CupertinoColors.black,
            scaffoldBackgroundColor: CupertinoColors.black,
            textTheme: CupertinoTextThemeData(
              textStyle: TextStyle(color: CupertinoColors.white),
            ),
          ),
          home: SafeArea(
            child: RepositoryProvider(
              create: (context) => TransactionRepository(
                database: context.read<DatabaseCubit>().state,
              ),
              child:
                  BlocBuilder<AppBloc, AppState>(builder: (context, appState) {
                switch (appState.userAuthenticationStatus) {
                  case UserAuthenticationStatus.authenticated:
                    return const HomeScreen(
                      title: appTitle,
                    );
                  case UserAuthenticationStatus.unauthenticated:
                    return const LoginScreen();
                  default:
                    return const CupertinoActivityIndicator();
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}
