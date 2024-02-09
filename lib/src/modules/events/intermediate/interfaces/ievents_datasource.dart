abstract interface class IEventsDatasource {
  Future<Map<String, dynamic>> createEvent(Map<String, dynamic> newEvent);
  Future<List<Map<String, dynamic>>> getEvents();
  Future<Map<String, dynamic>> updateEvent(Map<String, dynamic> event);
  Future<void> deleteEvent(Map<String, dynamic> event);
}
