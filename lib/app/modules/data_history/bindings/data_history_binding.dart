import 'package:get/get.dart';

import '../controllers/data_history_controller.dart';

class DataHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataHistoryController>(
      () => DataHistoryController(),
    );
  }
}
