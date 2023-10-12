import 'package:http/http.dart' as http;

enum HttpRequestStatus {
  // ignore_for_file: constant_identifier_names
  ERROR,
  PROCESSING,
  FINISH,
}

abstract class HttpRequest {
  static Future<dynamic> _getByUrl(String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      return response.statusCode == 200
          ? response.body as Map<String, dynamic>
          : HttpRequestStatus.ERROR;
    } catch (error) {
      return HttpRequestStatus.ERROR;
    }
  }

  /// DEFAULT -> path = '' <- for target root\
  /// POST -> return HttpRequestStatus.ERROR or Map<String, dynamic>
  static Future<HttpRequestStatus> post(
      {required String api,
      required String auth,
      String path = '',
      required Map<String, dynamic> body}) async {
    var finalUrl = api + '/$path.json?auth=$auth';
    try {
      http.Response response = await http.post(Uri.parse(finalUrl), body: body);
      return response.statusCode == 200
          ? HttpRequestStatus.FINISH
          : HttpRequestStatus.ERROR;
    } catch (error) {
      return HttpRequestStatus.ERROR;
    }
  }

  /// DEFAULT -> path = '' <- for target root\
  /// GET -> return HttpRequestStatus.ERROR or Map<String, dynamic>
  static Future<HttpRequestStatus> patch(
      {required String api,
      required String auth,
      String path = '',
      required Map<String, dynamic> body}) async {
    var finalUrl = api + '/$path.json?auth=$auth';
    try {
      http.Response response =
          await http.patch(Uri.parse(finalUrl), body: body);
      return response.statusCode == 200
          ? HttpRequestStatus.FINISH
          : HttpRequestStatus.ERROR;
    } catch (error) {
      return HttpRequestStatus.ERROR;
    }
  }

  /// DEFAULT  path:'' <- for target root\
  /// GET -> return HttpRequestStatus.ERROR or Map<String, dynamic>
  static Future<dynamic> get(
          {required String api,
          required String auth,
          String path = '',
          timeOutsec = 10}) async =>
      _getByUrl(api + '/$path.json?timeout=${timeOutsec}s&auth=$auth');

  /// FOR USE -> orderBy:'\$key' & path:'' <- for target root\
  /// DEFAULT -> timeOutsec = 10\
  /// GET -> return HttpRequestStatus.ERROR or Map<String, dynamic>
  static Future<dynamic> getByKey(
      {required String api,
      required String auth,
      required String query,
      required String path,
      required String orderBy,
      int timeOutsec = 10}) async {
    String finalUrl = api +
        '/$path.json?timeout=${timeOutsec}s&auth=$auth&orderBy="$orderBy"&startAt="$query"&endAt="$query\uf8ff"';
    return await _getByUrl(finalUrl);
  }

  /// FOR USE -> orderBy:'\$key' & path:'' <- for target root\
  /// DEFAULT -> range = 30,\
  /// GET -> return HttpRequestStatus.ERROR or Map<String, dynamic>
  static Future<dynamic> getByrange(
      {required String api,
      required String auth,
      required String startAt,
      int range = 30,
      required String path,
      required String orderBy,
      int timeOutsec = 10}) async {
    String finalUrl = api +
        '/$path.json?timeout=${timeOutsec}s&auth=$auth&orderBy="$orderBy"&startAt=$startAt&limitToFirst=$range';
    return await _getByUrl(finalUrl);
  }
}
