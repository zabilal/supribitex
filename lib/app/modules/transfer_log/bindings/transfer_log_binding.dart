import 'package:get/get.dart';

import '../controllers/transfer_log_controller.dart';

class TransferLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransferLogController>(
      () => TransferLogController(),
    );
  }
}
