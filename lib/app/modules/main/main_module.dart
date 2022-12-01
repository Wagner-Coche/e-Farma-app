import 'package:flutter_modular/flutter_modular.dart';

import '../main/screens/home_screen.dart';

class MainModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute, 
      child: (context, args) => HomeScreen(user: args.data),
      transition: TransitionType.fadeIn
    )
  ];

}