import 'package:get/get.dart';

import '../controllers/electricity_history_controller.dart';

class ElectricityHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElectricityHistoryController>(
      () => ElectricityHistoryController(),
    );
  }
}
