import 'package:happye/src/imports.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute("/events/");
    return MaterialApp.router(
      debugShowCheckedModeBanner:false,
      routerConfig: Modular.routerConfig,
    );
  }
}
