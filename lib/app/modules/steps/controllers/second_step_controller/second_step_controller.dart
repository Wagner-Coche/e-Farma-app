import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'second_step_controller.g.dart';

class SecondStepController = SecondStepControllerBase with _$SecondStepController;

abstract class SecondStepControllerBase with Store {
  
  Future<void> goToThirdStepScreen() async {
    Modular.to.navigate("third_step");
  }

}