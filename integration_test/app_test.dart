import 'package:happye/src/app/app_imports.dart';
import 'package:happye/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('E2E test', () {
    testWidgets('Splash Module should start application succesfully.', (tester) async {
      await app.main();
      final splashRobot = SplashRobot(tester);

      await splashRobot.startApplication(
        delayedProccess: true,
        seconds: 3
      );
    });
  });
}
