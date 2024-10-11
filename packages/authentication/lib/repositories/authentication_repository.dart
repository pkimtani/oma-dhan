import 'package:authentication/exceptions/login_email_password_exception.dart';
import 'package:authentication/exceptions/signup_email_password_exception.dart';
import 'package:authentication/interfaces/authentication_repository_interface.dart';
import 'package:authentication/models/auth_provider.dart';
import 'package:authentication/models/authenticated_user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

extension on firebase_auth.User {
  AuthenticatedUser get toAuthenticatedUser {
    return AuthenticatedUser(
      id: uid,
      username: displayName,
      fireName: displayName,
      lastName: '',
      email: email,
      profilePicUrl: photoURL,
      provider: const AuthProvider
          .emailAndPassword(), // TODO: logic to port provider_id to provider
    );
  }
}

class AuthenticationRepository implements AuthenticationRepositoryInterface {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  AuthenticationRepository(
    firebase_auth.FirebaseAuth? firebaseAuth,
  ) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  @override
  Stream<AuthenticatedUser> get authenticatedUser async* {
    yield* _firebaseAuth.authStateChanges().map((user) {
      return user?.toAuthenticatedUser ?? AuthenticatedUser.nullUser();
    });
  }

  @override
  Future<AuthenticatedUser> loginWithApple() {
    // TODO: implement loginWithApple
    throw UnimplementedError();
  }

  @override
  Future<AuthenticatedUser> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user?.toAuthenticatedUser ??
          AuthenticatedUser.nullUser();
    } on firebase_auth.FirebaseAuthException catch (error) {
      throw LoginWithEmailAndPasswordException.fromCode(error.code);
    } catch (_) {
      throw const LoginWithEmailAndPasswordException();
    }
  }

  @override
  Future<AuthenticatedUser> loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<AuthenticatedUser> loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> logout() => _firebaseAuth.signOut();

  @override
  Future<AuthenticatedUser> registerWithApple() {
    // TODO: implement registerWithApple
    throw UnimplementedError();
  }

  @override
  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (error) {
      throw SignupWithEmailAndPasswordException.fromCode(error.code);
    } catch (_) {
      throw const LoginWithEmailAndPasswordException();
    }
  }

  @override
  Future<AuthenticatedUser> registerWithFacebook() {
    // TODO: implement registerWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<AuthenticatedUser> registerWithGoogle() {
    // TODO: implement registerWithGoogle
    throw UnimplementedError();
  }
}
