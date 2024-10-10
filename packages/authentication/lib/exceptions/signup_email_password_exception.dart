class SignupWithEmailAndPasswordException implements Exception {
  final String message;

  const SignupWithEmailAndPasswordException([
    this.message = 'An unknown exception occurred.',
  ]);

  factory SignupWithEmailAndPasswordException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignupWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const SignupWithEmailAndPasswordException(
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return const SignupWithEmailAndPasswordException(
          'An account already exists for that email.',
        );
      case 'operation-not-allowed':
        return const SignupWithEmailAndPasswordException(
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return const SignupWithEmailAndPasswordException(
          'Please enter a stronger password.',
        );
      default:
        return const SignupWithEmailAndPasswordException();
    }
  }
}
