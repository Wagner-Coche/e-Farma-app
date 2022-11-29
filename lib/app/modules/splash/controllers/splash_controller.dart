import 'package:mobx/mobx.dart';
part 'splash_controller.g.dart';

class SplashController = SplashControllerBase with _$SplashController;

abstract class SplashControllerBase with Store {
  
  @observable
  double value = 0;

}