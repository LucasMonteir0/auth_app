abstract class AppHttpClient {
  Future get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });

  Future post(String url,
      {Map? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers,
      String? contentType});

  Future delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  });

  Future put(
    String url, {
    Map? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });
}