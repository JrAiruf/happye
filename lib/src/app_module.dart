import 'package:happye/src/imports.dart';
import 'package:happye/src/modules/events/events_module.dart';
import 'package:happye/src/modules/speakers/speakers_module.dart';

final class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.module("/events", module: EventsModule());
    r.module("/speakers", module: SpeakersModule());
  }
}
