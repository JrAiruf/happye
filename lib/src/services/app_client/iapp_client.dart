abstract interface class IAppClient {
  Future get(String path, Map body,{Map<String, dynamic>? headers});
  Future post(String path, Map body, {Map<String, dynamic>? headers});
  Future put(String path, Map body, {Map<String, dynamic>? headers});
  Future delete(String path, Map body, {Map<String, dynamic>? headers});
}
