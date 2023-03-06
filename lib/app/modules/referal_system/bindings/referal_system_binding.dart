import 'package:get/get.dart';

import '../controllers/referal_system_controller.dart';

class ReferalSystemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReferalSystemController>(
      () => ReferalSystemController(),
    );
  }
}
