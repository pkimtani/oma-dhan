library authentication;

import 'package:authentication/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

export 'models/firebase_user.dart';
export 'repositories/authentication_repository.dart';

class Authentication {
  const Authentication();

  static Future<FirebaseApp> init() async => await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
}
