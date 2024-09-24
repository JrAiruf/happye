import 'package:happye/src/app/app_imports.dart';

class SplashRobot {
  SplashRobot(this.tester);

  final WidgetTester tester;

  Future<void> startApplication({bool delayedProccess = false, int seconds = 1}) async {
    await tester.pumpAndSettle();

    expect(find.byKey(const Key(SplashKeys.splashPage)), findsOne);

    await tester.pump();

    expect(find.byKey(const Key(SplashKeys.appLogo)), findsOne);
    
    delayedProccess ? await Future.delayed(Duration(seconds: seconds)) : null;
  }
}
