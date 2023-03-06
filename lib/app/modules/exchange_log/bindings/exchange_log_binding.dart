import 'package:get/get.dart';

import '../controllers/exchange_log_controller.dart';

class ExchangeLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExchangeLogController>(
      () => ExchangeLogController(),
    );
  }
}
