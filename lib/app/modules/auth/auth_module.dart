import 'package:flutter_modular/flutter_modular.dart';

import 'login/screens/login_screen.dart';
import 'register/screens/otp_screen.dart';
import 'register/screens/register_screen.dart';
import 'login/controllers/login_controller.dart';
import 'register/screens/step_register_screen.dart';
import 'register/controllers/register_controler.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => LoginController()),
    Bind((i) => RegisterController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const LoginScreen()),
    ChildRoute("/step_register", child: (_, args) => const StepRegisterScreen()),
    ChildRoute("/register", child: (_, args) => const RegisterScreen()),
    ChildRoute("/otp", child: (_, args) => const OTPScreen()),
  ];

}