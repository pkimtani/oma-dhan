import 'package:authentication/exceptions/signup_email_password_exception.dart';
import 'package:authentication/models/firebase_user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

extension on firebase_auth.User {
  FirebaseUser get toUser {
    return FirebaseUser(
      uid: uid,
      email: email,
      displayName: displayName,
      profilePicUrl: photoURL,
    );
  }
}

class AuthenticationRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  AuthenticationRepository(
    firebase_auth.FirebaseAuth? firebaseAuth,
  ) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  Stream<FirebaseUser> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      return firebaseUser?.toUser ?? FirebaseUser.nullUser();
    });
  }

  Future<FirebaseUser> login(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _firebaseAuth.currentUser!.toUser;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignupWithEmailAndPasswordException.fromCode(e.code);
    } catch (_) {
      throw const SignupWithEmailAndPasswordException();
    }
  }
}
