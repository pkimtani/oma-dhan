library authentication;

import 'package:firebase_core/firebase_core.dart';

export 'repositories/authentication_repository.dart';

class Authentication {
  const Authentication();

  static Future<FirebaseApp> init() async => await Firebase.initializeApp();
}
