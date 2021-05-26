import 'package:moneyManager/app/modules/store/main_store.dart';

import 'stepper_page.dart';
import 'stepper_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StepperModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $StepperController,
         Bind((i) => MainStore()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => StepperPage()),
      ];

  static Inject get to => Inject<StepperModule>.of();
}
