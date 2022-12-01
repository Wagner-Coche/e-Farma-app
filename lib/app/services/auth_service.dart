import 'package:flutter/cupertino.dart';

abstract class AuthService {
  loginUser({
    required String email, 
    required String password, 
    required BuildContext context
  });
  registerUser(
    String name, 
    String email, 
    String number, 
    String password, 
    String confirmPassword
  );
}