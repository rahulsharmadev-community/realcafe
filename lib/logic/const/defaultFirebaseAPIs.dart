import 'package:realcafe/logic/IOT/product_request.dart';

import 'API_Credentials.dart';

abstract class DefaultRequestAPIs {
  static ProductRequest get products => ProductRequest(
      Secret_Credentials.productsSecret.apiDomain,
      Secret_Credentials.productsSecret.authId);

  static FirebaseAPI get users => FirebaseAPI(
      api: Secret_Credentials.usersSecret.apiDomain,
      auth: Secret_Credentials.usersSecret.authId);
}
