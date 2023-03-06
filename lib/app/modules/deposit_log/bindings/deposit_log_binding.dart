import 'package:get/get.dart';

import '../controllers/deposit_log_controller.dart';

class DepositLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepositLogController>(
      () => DepositLogController(),
    );
  }
}
