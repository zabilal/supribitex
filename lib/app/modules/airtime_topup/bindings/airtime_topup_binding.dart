import 'package:get/get.dart';

import '../controllers/airtime_topup_controller.dart';

class AirtimeTopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AirtimeTopupController>(
      () => AirtimeTopupController(),
    );
  }
}
