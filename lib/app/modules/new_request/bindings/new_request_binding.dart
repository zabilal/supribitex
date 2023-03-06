import 'package:get/get.dart';

import '../controllers/new_request_controller.dart';

class NewRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewRequestController>(
      () => NewRequestController(),
    );
  }
}
