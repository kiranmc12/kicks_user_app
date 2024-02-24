import 'package:dio/dio.dart';

String handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionError:
      return "Check Your Internet Connectivity";
    case DioExceptionType.connectionTimeout:
      return "Connection timeout error";
    case DioExceptionType.sendTimeout:
      return "Send timeout error";
    case DioExceptionType.receiveTimeout:
      return "Receive timeout error";
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return "Bad response: ${error.response?.statusCode} - ${error.response?.statusMessage}";
      } else {
        return "Default bad response error";
      }
    case DioExceptionType.cancel:
      return "Request canceled error";
    default:
      return "Default error";
  }
}