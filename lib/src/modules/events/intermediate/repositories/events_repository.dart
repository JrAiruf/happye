import 'package:happye/src/imports.dart';

final class EventsRepository implements IEventsRepositoyry {
  EventsRepository(this._datasource);
  final IEventsDatasource _datasource;

  @override
  Future<Either<EventsException, EventModel>> createEvent(EventModel newEvent) {
    _datasource;
    throw UnimplementedError();
  }

  @override
  Future<void> deleteEvent(EventModel event) {
    // TODO: implement deleteEvent
    throw UnimplementedError();
  }

  @override
  Future<List<EventModel>> getEvents() {
    // TODO: implement getEvents
    throw UnimplementedError();
  }

  @override
  Future<EventModel> updateEvent(EventModel event) {
    // TODO: implement updateEvent
    throw UnimplementedError();
  }
}
