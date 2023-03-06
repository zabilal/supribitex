import 'package:get/get.dart';

import '../controllers/cable_subscription_controller.dart';

class CableSubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CableSubscriptionController>(
      () => CableSubscriptionController(),
    );
  }
}
