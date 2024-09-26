import 'package:apps/core/app.bloc_observer.dart';
import 'package:apps/core/pages/home_screen.dart';
import 'package:apps/database/database_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();

  runApp(
    BlocProvider(
        create: (BuildContext context) => DatabaseCubit(),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'OmaDhan';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: appTitle,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemBlue,
        barBackgroundColor: CupertinoColors.black,
        scaffoldBackgroundColor: CupertinoColors.black,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: CupertinoColors.white),
        ),
      ),
      home: SafeArea(
        child: HomeScreen(title: appTitle),
      ),
    );
  }
}
