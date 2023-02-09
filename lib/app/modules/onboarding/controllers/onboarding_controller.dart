import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final count = 0.obs;
  void increment() => count.value++;
  var index = 0.obs;
  var currentPage = 0.obs;

  int setCurrentPage(value) {
    return currentPage(currentPage.value = value);
  }
}
