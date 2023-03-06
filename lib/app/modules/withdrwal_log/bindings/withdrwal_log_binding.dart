import 'package:get/get.dart';

import '../controllers/withdrwal_log_controller.dart';

class WithdrwalLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WithdrwalLogController>(
      () => WithdrwalLogController(),
    );
  }
}
