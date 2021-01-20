import 'package:get/state_manager.dart';
import 'package:mishkal_app_new/services/api/abstract_api.dart';
import 'package:mishkal_app_new/services/api/fake_api.dart';

enum ApiState { Busy, Idle, Error }

class APIGetXController extends GetxController {
  ApiState state = ApiState.Idle;
  AbstractApi api = FakeApi();
  String date;

  void setState(ApiState newState) {
    state = newState;
    update();
  }

  void sendRequest(String data, String action) async {
    try {
      setState(ApiState.Busy);

      var response = await api.post_request(data, action);
      date = response.body;

      setState(ApiState.Idle);
    } on Exception catch (e) {
      setState(ApiState.Error);
      print(e);
    }
  }
}
