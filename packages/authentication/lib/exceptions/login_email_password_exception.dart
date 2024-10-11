class LoginWithEmailAndPasswordException implements Exception {
  final String message;

  const LoginWithEmailAndPasswordException([
    this.message = 'An unknown exception occurred.',
  ]);

  factory LoginWithEmailAndPasswordException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const LoginWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const LoginWithEmailAndPasswordException(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LoginWithEmailAndPasswordException(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LoginWithEmailAndPasswordException(
          'Incorrect password, please try again.',
        );
      case 'invalid-credential':
        return const LoginWithEmailAndPasswordException(
          'Invalid email or password, please try again.',
        );
      default:
        return const LoginWithEmailAndPasswordException();
    }
  }
}
