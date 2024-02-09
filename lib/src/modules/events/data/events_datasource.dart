import 'package:happye/src/imports.dart';

class EventsDatasource implements IEventsDatasource {
  EventsDatasource(this._client);

  final IAppClient _client;

  @override
  Future<Map<String, dynamic>> createEvent(Map<String, dynamic> newEvent) {
    _client.get("path", newEvent);
    throw UnimplementedError();
  }

  @override
  Future<void> deleteEvent(Map<String, dynamic> newEvent) {
    // TODO: implement deleteEvent
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, dynamic>>> getEvents() {
    // TODO: implement getEvents
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> updateEvent(Map<String, dynamic> newEvent) {
    // TODO: implement updateEvent
    throw UnimplementedError();
  }
}
