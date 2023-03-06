import 'package:get/get.dart';

import '../controllers/activities_log_controller.dart';

class ActivitiesLogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActivitiesLogController>(
      () => ActivitiesLogController(),
    );
  }
}
