import 'package:http/http.dart';
import 'package:mishkal_app_new/services/api/abstract_api.dart';

class FakeApi extends AbstractApi {
  @override
  Future<Response> post_request(String data, String type) {
    // TODO: implement post_request
    throw UnimplementedError();
  }

  var _fake_actions = {};
}
