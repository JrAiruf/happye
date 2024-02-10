import 'package:happye/src/imports.dart';
import 'package:happye/src/modules/events/view_layer/controllers/home_controller.dart';

final class EventsModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child("/", child: (_) => const HomePage());
    r.child("/create_event_page", child: (_) => const CreateEventPage());
  }

  @override
  void binds(Injector i) {
    i.addLazySingleton<IEventsDatasource>(EventsDatasource.new);
    i.addLazySingleton<HomeController>(HomeController.new);
  }
}
