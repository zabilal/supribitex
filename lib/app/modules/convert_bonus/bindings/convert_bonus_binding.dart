import 'package:get/get.dart';

import '../controllers/convert_bonus_controller.dart';

class ConvertBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConvertBonusController>(
      () => ConvertBonusController(),
    );
  }
}
