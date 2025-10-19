import 'package:basic/core/constants/NetworkConstant.dart';
import 'package:basic/data/network/DioInterceptors.dart';
import 'package:dio/dio.dart';


class DioClient {
  late final Dio _dio;
  DioClient() {
    BaseOptions options = BaseOptions(
      baseUrl: NetworkConstant.baseUrl,
      connectTimeout: NetworkConstant.timeoutDuration,
      receiveTimeout: NetworkConstant.timeoutDuration,
      headers: {
        'Content-Type': NetworkConstant.contentType,
        // Add other headers if needed
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(DioInterceptors());
  }

  Dio get dio => _dio;

  // dio methods
  /// GET request
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.get(path, queryParameters: queryParameters, options: options);
  }

  /// POST request
  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  /// PUT request
  Future<Response> put(String path, {dynamic data, Options? options}) async {
    return _dio.put(path, data: data, options: options);
  }

  /// DELETE request
  Future<Response> delete(String path, {dynamic data, Options? options}) async {
    return _dio.delete(path, data: data, options: options);
  }
}