import 'screens/first_step_screen.dart';
import 'screens/fourth_step_screen.dart';
import 'screens/third_step_screen.dart';
import 'screens/second_step_screen.dart';
import 'controllers/first_step_controller/first_step_controller.dart';
import 'controllers/third_step_controller/third_step_controller.dart';
import 'controllers/second_step_controller/second_step_controller.dart';
import 'controllers/fourth_step_controller/fourth_step_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';


class StepsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => FirstStepController()),
    Bind((i) => SecondStepController()),
    Bind((i) => ThirdStepController()), 
    Bind((i) => FourthStepController()), 
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const FirstStepScreen()),
    ChildRoute("/second_step", child: (_, args) => const SecondStepScreen()),
    ChildRoute("/third_step", child: (_, args) => const ThirdStepScreen()),
    ChildRoute("/fourth_step", child: (_, args) => const FourthStepScreen())
  ];

}