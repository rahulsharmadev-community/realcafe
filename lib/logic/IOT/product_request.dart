import 'package:realcafe/logic/IOT/http_request.dart';

import '/logic/objects/product.dart';

class ProductRequest {
  final String _api;
  final String _auth;
  ProductRequest(this._api, this._auth);

  /// PATCH -> return HttpRequestStatus
  Future<HttpRequestStatus> patchById(String productId, Product product) async {
    return await HttpRequest.patch(
        api: _api, auth: _auth, path: productId, body: product.toJson());
  }

  /// DEFAULT -> path = '' <- for target root POST\
  /// POST -> return HttpRequestStatus
  Future<HttpRequestStatus> post(Product product) async {
    return await HttpRequest.post(
        api: _api, auth: _auth, path: '', body: product.toJson());
  }

  /// POST -> may return HttpRequestStatus.ERROR or Product
  Future<dynamic> getById(String productId) async {
    dynamic response =
        await HttpRequest.get(api: _api, auth: _auth, path: productId);
    return response is HttpRequestStatus
        ? response
        : Product.fromJson(response);
  }

  /// ROOT USE -> orderBy:'$key',path:''\
  /// ```eg. title,category```\
  /// POST -> may return HttpRequestStatus.ERROR or List<Product>
  Future<dynamic> getBySearch(
      {required String key,
      required String orderBy,
      required String path}) async {
    dynamic response = await HttpRequest.getByKey(
        api: _api, auth: _auth, query: key, path: path, orderBy: orderBy);
    if (response is HttpRequestStatus) {
      return response;
    } else {
      List<Product> _list = [];
      (response as Map<String, dynamic>).forEach((key, value) {
        (value as Map<String, dynamic>).addAll({"productId": key});
        _list.add(Product.fromJson(value));
      });
      return _list;
    }
  }
}
