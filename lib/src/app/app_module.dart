import 'package:happye/src/app/app_imports.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module('/', module: SplashModule());
  }
}
