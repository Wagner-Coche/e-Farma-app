import 'package:e_farma/app/modules/auth/login/controllers/login_controller.dart';
import 'package:e_farma/app/modules/auth/login/screens/loading_login_screen.dart';
import 'package:e_farma/app/shared/font_style.dart';
import 'package:flutter/material.dart';
import 'package:e_farma/app/error/auth_error.dart';
import 'package:e_farma/app/shared/colors_default.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:e_farma/app/services/auth_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthServiceImp implements AuthService {
  User? user;
  bool isLoading = true;
  FirebaseAuth auth = FirebaseAuth.instance;
  LoginController controller = LoginController();

  AuthServiceImp() {
    authCheck();
  }

  authCheck() {
    auth.authStateChanges().listen((User? result) {
      user = (result == null) ? null : result;
      isLoading = false;
    });
  }
  
  @override
  loginUser({
    required String email, 
    required String password, 
    required BuildContext context
  }) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, 
        password: password
      );
      if (userCredential != null) {
        Modular.to.navigate("loading_login", arguments: userCredential.user);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: ColorsDefault.red,
          dismissDirection: DismissDirection.horizontal,
          duration: const Duration(seconds: 2),
          content: Text(
            textAlign: TextAlign.center,
            "Usuário não encontrado",
            style: FontStyle.custom.copyWith(
              fontSize: MediaQuery.of(context).size.height * .015,
              fontWeight: FontWeight.bold
            )
          )
        ));
      } 
      if (e.code == "wrong-password") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: ColorsDefault.red,
          dismissDirection: DismissDirection.horizontal,
          duration: const Duration(seconds: 2),
          content: Text(
            textAlign: TextAlign.center,
            "Sua senha está errada",
            style: FontStyle.custom.copyWith(
              fontSize: MediaQuery.of(context).size.height * .015,
              fontWeight: FontWeight.bold
            )
          )
        ));
      }
    }
  }
  
  @override
  registerUser(
    String name,
    String email,
    String number,
    String password,
    String confirmPassword
  ) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email, 
        password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        throw AuthError("A senha é muito fraca!");
      } else if (e.code == "email-already-in-use") {
        throw AuthError("Este email já está cadastrado!");
      }
    }
  }

}