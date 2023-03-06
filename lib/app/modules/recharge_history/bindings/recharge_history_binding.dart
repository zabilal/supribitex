import 'package:get/get.dart';

import '../controllers/recharge_history_controller.dart';

class RechargeHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RechargeHistoryController>(
      () => RechargeHistoryController(),
    );
  }
}
