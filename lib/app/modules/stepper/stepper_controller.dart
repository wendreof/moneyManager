import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'stepper_controller.g.dart';

@Injectable()
class StepperController = _StepperControllerBase with _$StepperController;

abstract class _StepperControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
