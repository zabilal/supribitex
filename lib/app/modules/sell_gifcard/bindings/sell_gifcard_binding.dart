import 'package:get/get.dart';

import '../controllers/sell_gifcard_controller.dart';

class SellGifcardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellGifcardController>(
      () => SellGifcardController(),
    );
  }
}
