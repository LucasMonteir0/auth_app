import 'package:dio/dio.dart';
import 'package:auth_app/app/commons/services/app_http_client.dart';

class DioClient implements AppHttpClient {
  final Dio _dio;

  DioClient(this._dio);

  @override
  Future delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) {
    return _dio.delete(
      url,
      data: body,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }

  @override
  Future get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return _dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }

  @override
  Future post(String url,
      {Map? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers,
      String? contentType}) {
    return _dio.post(
      url,
      data: body,
      queryParameters: queryParameters,
      options: Options(headers: headers, contentType: contentType),
    );
  }

  @override
  Future put(
    String url, {
    Map? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return _dio.put(
      url,
      data: body,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }
}