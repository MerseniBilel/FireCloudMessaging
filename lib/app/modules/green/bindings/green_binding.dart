import 'package:get/get.dart';

import '../controllers/green_controller.dart';

class GreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GreenController>(
      () => GreenController(),
    );
  }
}
