import 'dart:async';

import 'package:get/get.dart';
import 'package:supribitex/app/modules/home/views/home_view.dart';

import '../../onboarding/views/onboarding_view.dart';

class SplashController extends GetxController {
  final count = 0.obs;

  startTimeout() {
    return Timer(const Duration(seconds: 3), changeScreen);
  }

  changeScreen() async {
    Get.to(() => HomeView());
  }

  @override
  void onInit() {
    super.onInit();
    startTimeout();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
