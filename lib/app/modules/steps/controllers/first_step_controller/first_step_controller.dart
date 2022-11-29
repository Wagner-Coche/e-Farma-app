import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'first_step_controller.g.dart';

class FirstStepController = FirstStepControllerBase with _$FirstStepController;

abstract class FirstStepControllerBase with Store {
  
  Future<void> goToSecondStepScreen() async {
    Modular.to.navigate("second_step");
  }

}