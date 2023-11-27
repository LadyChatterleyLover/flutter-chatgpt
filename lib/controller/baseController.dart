import 'package:get/get.dart';

class BaseController extends GetxController {
  RxInt currentTabIndex = 0.obs;

  void changeTab(int index) {
    currentTabIndex.value = index;
    update();
  }
}
