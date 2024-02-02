import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/navigator_key.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
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
      if (exception.response?.statusCode == 401) {
        NavigationService()
            .navigatorKey
            .currentState!
            .pushNamed(Routes.signInPage);
        final SnackBar snackBar =
            SnackBar(content: Text("Token Expired Login Again"));
        NavigationService()
            .scaffoldMessengerKey
            .currentState!
            .showSnackBar(snackBar);

        rethrow;
      } else {
        rethrow;
      }
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
      if (exception.response?.statusCode == 401) {
        NavigationService()
            .navigatorKey
            .currentState!
            .pushNamedAndRemoveUntil(Routes.signInPage,(route) => false);
        final SnackBar snackBar =
            SnackBar(content: Text("Token Expired Login Again"));
        NavigationService()
            .scaffoldMessengerKey
            .currentState!
            .showSnackBar(snackBar);

        rethrow;
      } else {
        rethrow;
      }
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
      if (exception.response?.statusCode == 401) {
        NavigationService()
            .navigatorKey
            .currentState!
            .pushNamed(Routes.signInPage);
        final SnackBar snackBar =
            SnackBar(content: Text("Token Expired Login Again"));
        NavigationService()
            .scaffoldMessengerKey
            .currentState!
            .showSnackBar(snackBar);

        rethrow;
      } else {
        rethrow;
      }
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
      if (exception.response?.statusCode == 401) {
        NavigationService()
            .navigatorKey
            .currentState!
            .pushNamed(Routes.signInPage);
        final SnackBar snackBar =
            SnackBar(content: Text("Token Expired Login Again"));
        NavigationService()
            .scaffoldMessengerKey
            .currentState!
            .showSnackBar(snackBar);

        rethrow;
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }
}
