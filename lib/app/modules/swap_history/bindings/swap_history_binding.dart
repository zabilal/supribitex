import 'package:get/get.dart';

import '../controllers/swap_history_controller.dart';

class SwapHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SwapHistoryController>(
      () => SwapHistoryController(),
    );
  }
}
