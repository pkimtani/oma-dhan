library authentication;

import 'package:authentication/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

export 'exceptions/login_email_password_exception.dart';
export 'exceptions/signup_email_password_exception.dart';
export 'interfaces/authentication_repository_interface.dart';
export 'models/authenticated_user.dart';
export 'repositories/authentication_repository.dart';

class Authentication {
  Authentication() {
    FirebaseAuth.instanceFor(app: Firebase.app())
        .setPersistence(Persistence.LOCAL);
  }

  static Future<FirebaseApp> init() async => await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
}
