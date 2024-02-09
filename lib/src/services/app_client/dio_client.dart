import 'dart:convert';

import 'package:happye/src/imports.dart';
import 'package:happye/src/services/app_client/client_exception.dart';

class DioClient implements IAppClient {
  DioClient(this._dio);

  final Dio _dio;

  @override
  Future<Response> get(String path, Map body, {Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.get(
        path,
        data: jsonEncode(body),
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } on DioException catch (e) {
      throw ClientException(e.response?.statusMessage ?? "");
    } catch (e, s) {
      throw UnknowBehavior("Some error occurred in path: $s");
    }
  }

  @override
  Future<Response> post(String path, Map body, {Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post(
        path,
        data: jsonEncode(body),
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } on DioException catch (e) {
      throw ClientException(e.response?.statusMessage ?? "");
    } catch (e, s) {
      throw UnknowBehavior("Some error occurred in path: $s");
    }
  }

  @override
  Future<Response> put(String path, Map body, {Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.put(
        path,
        data: jsonEncode(body),
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } on DioException catch (e) {
      throw ClientException(e.response?.statusMessage ?? "");
    } catch (e, s) {
      throw UnknowBehavior("Some error occurred in path: $s");
    }
  }

  @override
  Future<Response> delete(String path, Map body, {Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.delete(
        path,
        data: jsonEncode(body),
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } on DioException catch (e) {
      throw ClientException(e.response?.statusMessage ?? "");
    } catch (e, s) {
      throw UnknowBehavior("Some error occurred in path: $s");
    }
  }
}
