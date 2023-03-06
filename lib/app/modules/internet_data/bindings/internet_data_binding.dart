import 'package:get/get.dart';

import '../controllers/internet_data_controller.dart';

class InternetDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InternetDataController>(
      () => InternetDataController(),
    );
  }
}
