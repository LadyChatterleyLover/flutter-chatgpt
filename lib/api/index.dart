import 'package:dio/dio.dart';

class ApiClient {
  static const baseUrl = 'http://192.168.170.67:7001';
  static final Dio _dio = Dio(BaseOptions(baseUrl: baseUrl));

  static Dio get dio {
    return _dio;
  }

  Future<Response> get(String path) async {
    try {
      final response = await dio.get(path);
      return response;
    } catch (error) {
      throw Exception('Error occurred during GET request: $error');
    }
  }

  Future<Response> post(String path, Object? data) async {
    try {
      final response = await dio.post(path, data: data);
      return response;
    } catch (error) {
      throw Exception('Error occurred during GET request: $error');
    }
  }

  Future<Response> put(String path, Object? data) async {
    try {
      final response = await dio.put(path, data: data);
      return response;
    } catch (error) {
      throw Exception('Error occurred during GET request: $error');
    }
  }

  Future<Response> delete(String path, Object? data) async {
    try {
      final response = await dio.delete(path, data: data);
      return response;
    } catch (error) {
      throw Exception('Error occurred during GET request: $error');
    }
  }
}
