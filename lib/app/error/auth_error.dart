class AuthError implements Exception {
  final String? messageError;

  AuthError(this.messageError);
}