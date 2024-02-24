import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/data/services/dierror.dart';

import 'package:kicks_sneakerapp/data/shared_preferences/shared_preferences.dart';

class ApiServices {
  final Dio dio;
  final String baseUrl;

  ApiServices({required this.dio, required this.baseUrl});

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response =
          await dio.get(url, data: data, queryParameters: queryParameters);

      return response;
    } on DioException catch (exception) {
      final errorMessage = handleError(exception);

      Fluttertoast.showToast(msg: errorMessage, backgroundColor: kRed);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response = await dio.post(
        url,
        data: data is FormData ? data : data as Map<String, dynamic>?,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (exception) {
      final errorMessage = handleError(exception);

      Fluttertoast.showToast(msg: errorMessage, backgroundColor: kRed);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      print(queryParameters);
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response = await dio.put(url,
          data: data is FormData ? data : data as Map<String, dynamic>?,
          queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      final errorMessage = handleError(exception);

      Fluttertoast.showToast(msg: errorMessage, backgroundColor: kRed);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response =
          await dio.delete(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      final errorMessage = handleError(exception);

      Fluttertoast.showToast(msg: errorMessage, backgroundColor: kRed);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
