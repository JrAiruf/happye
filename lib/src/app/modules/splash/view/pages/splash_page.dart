import 'package:happye/src/app/modules/splash/splash_imports.dart';
import 'package:happye/src/app/modules/splash/view/widgets/app_logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Material(
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: AppLogo(
            height: height * 0.32,
            width: width,
            key: const Key('app_logo'),
          ),
        ),
      ),
    );
  }
}
