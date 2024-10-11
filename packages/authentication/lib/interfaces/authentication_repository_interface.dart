import 'package:authentication/models/authenticated_user.dart';

abstract interface class AuthenticationRepositoryInterface {
  // Stream of authenticated user or null if not authenticated
  Stream<AuthenticatedUser> get authenticatedUser;

  Future<AuthenticatedUser> loginWithEmailAndPassword(
      String email, String password);
  Future<AuthenticatedUser> loginWithGoogle();
  Future<AuthenticatedUser> loginWithFacebook();
  Future<AuthenticatedUser> loginWithApple();

  Future<void> registerWithEmailAndPassword(String email, String password);
  Future<AuthenticatedUser> registerWithGoogle();
  Future<AuthenticatedUser> registerWithFacebook();
  Future<AuthenticatedUser> registerWithApple();

  Future<void> logout();
}
