import 'package:dio/dio.dart';

class DioInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // You can modify the request here, e.g., add headers
    print('Request to: ${options.uri}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // You can process the response here
    print(
      'Response from: ${response.requestOptions.uri} with status: ${response.statusCode}',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle errors here
    print('Error from: ${err.requestOptions.uri} with message: ${err.message}');
    super.onError(err, handler);
  }
}