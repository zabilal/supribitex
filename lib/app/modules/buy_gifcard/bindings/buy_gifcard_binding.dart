import 'package:get/get.dart';

import '../controllers/buy_gifcard_controller.dart';

class BuyGifcardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuyGifcardController>(
      () => BuyGifcardController(),
    );
  }
}
