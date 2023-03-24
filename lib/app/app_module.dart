import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/modules/email.dart';
import 'package:todolist/app/modules/home/home_module.dart';
import 'package:todolist/app/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => Email()),
      ];
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/login', module: LoginModule())
      ];
}
