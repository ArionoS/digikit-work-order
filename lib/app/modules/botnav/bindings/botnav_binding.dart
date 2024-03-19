import 'package:get/get.dart';

import '../controllers/botnav_controller.dart';

class BotnavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BotnavController>(
      () => BotnavController(),
    );
  }
}
