import 'package:get/get.dart';

import '../controllers/cable_history_controller.dart';

class CableHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CableHistoryController>(
      () => CableHistoryController(),
    );
  }
}
