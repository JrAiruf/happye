import 'package:happye/src/imports.dart';

abstract interface class IEventsRepositoyry {
  Future<Either<EventsException, EventModel>> createEvent(EventModel newEvent);
  Future<List<EventModel>> getEvents();
  Future<EventModel> updateEvent(EventModel event);
  Future<void> deleteEvent(EventModel event);
}
