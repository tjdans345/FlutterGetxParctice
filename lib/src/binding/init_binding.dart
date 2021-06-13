import 'package:flutter_getx_practice/src/controller/app_controller.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AppController());
  }
}
