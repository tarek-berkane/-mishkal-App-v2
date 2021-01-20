import 'package:http/http.dart';

abstract class AbstractApi {
  Future<Response> post_request(String data, String type);
}
