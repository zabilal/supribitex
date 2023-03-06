import 'package:get/get.dart';

import '../controllers/airtime_swap_controller.dart';

class AirtimeSwapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AirtimeSwapController>(
      () => AirtimeSwapController(),
    );
  }
}
