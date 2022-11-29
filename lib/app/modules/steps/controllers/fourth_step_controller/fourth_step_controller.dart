import 'package:mobx/mobx.dart';

import 'package:flutter_modular/flutter_modular.dart';
part 'fourth_step_controller.g.dart';

class FourthStepController = FourthStepControllerBase with _$FourthStepController;

abstract class FourthStepControllerBase with Store {
  
  Future<void> goToLoginScreen() async {
    Modular.to.navigate("/auth/");
  }

}