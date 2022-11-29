import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'third_step_controller.g.dart';

class ThirdStepController = ThirdStepControllerBase with _$ThirdStepController;

abstract class ThirdStepControllerBase with Store {

  Future<void> goToFourthStepScreen() async {
    Modular.to.navigate("fourth_step");
  }

}