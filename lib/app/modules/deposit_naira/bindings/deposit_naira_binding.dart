import 'package:get/get.dart';

import '../controllers/deposit_naira_controller.dart';

class DepositNairaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepositNairaController>(
      () => DepositNairaController(),
    );
  }
}
