import 'package:happye/src/imports.dart';

class HomeController {
  ValueNotifier<int> pageIndex = ValueNotifier(0);
  final homePageController = PageController(initialPage: 0);
}
