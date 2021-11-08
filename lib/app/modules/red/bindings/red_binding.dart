import 'package:get/get.dart';

import '../controllers/red_controller.dart';

class RedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RedController>(
      () => RedController(),
    );
  }
}
