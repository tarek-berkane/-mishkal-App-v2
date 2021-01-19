import 'package:get/state_manager.dart';

class PageGetXController extends GetxController {
  var _count = 0.obs;

  get getPageIndex => _count;

  set setPageIndex(int index) {
    _count = RxInt(index);
    update();
  }
}
