abstract class NetworkConstant {
  NetworkConstant._();
  static const String baseUrl ='https://randomuser.me/';
  static const String apiVersion = 'v1/';
  static const Duration timeoutDuration = Duration(seconds: 30); // in seconds
  static const String contentType = 'application/json';
  static const String authorization = 'Authorization';
}