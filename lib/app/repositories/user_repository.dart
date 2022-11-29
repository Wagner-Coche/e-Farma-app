abstract class UserRepository {
  Future<void> userRegister(String email, String password);
  Future<void> userLogin();
}