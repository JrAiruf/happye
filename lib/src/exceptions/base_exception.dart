import 'package:happye/src/imports.dart';

abstract class BaseException implements Exception {
  BaseException(this.exception) {
    _showException(exception);
  }

  final String exception;

  void _showException(String exception) {
    FlutterError.presentError(FlutterErrorDetails(exception: exception));
  }
}

class UnknowBehavior extends BaseException {
  UnknowBehavior(super.exception);
}
