// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

class ApiNetwork {
  late Dio dio;
  // static const baseUrl = 'https://mhris.pln-t.net';
  static const baseUrl = 'https://hris.pln-t.net/android';

  ApiNetwork() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30000),
        receiveTimeout: const Duration(seconds: 20000),
        headers: {
          // 'Accept': 'application/json',
        },
      ),
    );
  }

  Future<Map<String, dynamic>?> _getAuthHeaders(String? token) async {
    return token != null ? {'Authorization': 'Bearer $token'} : null;
  }

  Future<Either<dynamic, Exception>> requestGET(HttpRequest req) async {
    return _sendRequest('GET', () async {
      return await dio.get(
        '$baseUrl/${req.endpoint}',
        data: req.data,
        queryParameters: req.queryParameters,
        options: Options(
          headers: {...await _getAuthHeaders(req.token) ?? {}},
        ),
      );
    }, req);
  }

  Future<Either<dynamic, Exception>> requestPOST(HttpRequest req) async {
    return _sendRequest('POST', () async {
      return await dio.post(
        '$baseUrl/${req.endpoint}',
        data: req.data,
        queryParameters: req.queryParameters,
        options: Options(
          headers: {...await _getAuthHeaders(req.token) ?? {}},
        ),
      );
    }, req);
  }

  Future<Either<dynamic, Exception>> requestPUT(HttpRequest req) async {
    return _sendRequest('PUT', () async {
      return await dio.put(
        '$baseUrl/${req.endpoint}',
        data: req.data,
        queryParameters: req.queryParameters,
        options: Options(
          headers: {...await _getAuthHeaders(req.token) ?? {}},
        ),
      );
    }, req);
  }

  Future<Either<dynamic, Exception>> requestDELETE(HttpRequest req) async {
    return _sendRequest('DELETE', () async {
      return await dio.delete(
        '$baseUrl/${req.endpoint}',
        data: req.data,
        queryParameters: req.queryParameters,
        options: Options(
          headers: {...await _getAuthHeaders(req.token) ?? {}},
        ),
      );
    }, req);
  }

  Future<Either<dynamic, Exception>> _sendRequest(String method,
      Future<Response> Function() action, HttpRequest request) async {
    try {
      Response response = await action();

      apiLog(
          method: method,
          res: response,
          url: request.endpoint,
          payload: request.data);
      return Left(response);
    } on DioException catch (e) {
      apiLog(
          method: method,
          res: e.response,
          url: request.endpoint,
          payload: request.data);
      return _handleDioException(e);
    } catch (e) {
      rethrow;
    }
  }

  _handleDioException(DioException e) {
    return Exception(e.message.toString());
    // var statusCode = e.response?.statusCode ?? 500;
    // switch (statusCode) {
    //   case 400:
    //     return BadRequestException(e.response?.data.toString());
    //   case 401:
    //   case 403:
    //     return UnauthorisedException(e.response?.data.toString());
    //   case 500:
    //     return InternalServerError(e.response?.data.toString());
    //   default:
    //     return FetchDataException(
    //         'Error occured while Communication with Server with StatusCode : $statusCode');
  }
}

void apiLog({
  required Response<dynamic>? res,
  required String method,
  required String url,
  Map<String, dynamic>? payload,
  DioException? error,
}) {
  print("URL : $url\nMethod : $method\nPayload : $payload\nResponse : $res"
      "\nException: $error");
}

class HttpRequest {
  const HttpRequest({
    required this.endpoint,
    this.token,
    this.data,
    this.queryParameters,
  });

  final String endpoint;
  final String? token;
  final Map<String, dynamic>? data;
  final Map<String, dynamic>? queryParameters;
}
