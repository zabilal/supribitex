import 'package:get/get.dart';

import '../controllers/electricity_bill_controller.dart';

class ElectricityBillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElectricityBillController>(
      () => ElectricityBillController(),
    );
  }
}
