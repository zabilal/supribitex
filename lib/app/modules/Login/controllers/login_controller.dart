import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supribitex/app/modules/home/views/home_view.dart';
import 'package:supribitex/app/utils/error_utils.dart';

import '../user.dart';
import '../views/login_screen.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.find();
  final _connect = GetConnect();

  // late Rx<User?> _user;
  final _status = Rx<RxStatus>(RxStatus.empty());

  RxStatus get status => _status.value;

  final refnameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // _user = Rx<User?>(auth.currentUser);

    // _user.bindStream(auth.userChanges());

    // ever(_user, _intialScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }

  bool _isValid() {
    if (emailController.text.trim().isEmpty) {
      ErrorUtils.showErrorSnackbar(
          title: "Error", message: "Don't leave email empty");
    }
    if (!emailController.text.trim().isEmail) {
      ErrorUtils.showErrorSnackbar(
          title: "Error", message: "Your Email is not correct");
    }
    if (passwordController.text.trim().isEmpty) {
      ErrorUtils.showErrorSnackbar(
          title: "Error", message: "Don't leave password empty");
    }
    if (passwordController.text.trim() != cpasswordController.text.trim()) {
      ErrorUtils.showErrorSnackbar(
          title: "Error", message: "Your password does not match");
    }
    return true;
  }

  void increment() => count.value++;

  _intialScreen(User? user) {
    if (user == null) {
      print("Login Page");
      Get.offAll(() => LoginScreen());
    } else {
      Get.offAll(() => HomeView());
    }
  }

  void register() async {
    if (_isValid()) {
      try {
        var refname = refnameController.text.trim();
        var username = usernameController.text.trim();
        var email = emailController.text.trim();
        var phoneNumber = phoneController.text.trim();
        var password = passwordController.text.trim();

        Map<String, dynamic> regmap = {
          "refname": refname,
          "username": username,
          "email": email,
          "phone": phoneNumber,
          "passcode": password,
          "cpasscode": cpasswordController.text.trim()
        };

        final response = await _connect.post(
            'https://ios.supribitex.app/enrolform.php', regmap);
        printInfo(info: 'Response from registeration :: ${response.body}');
        if (response.body["status"] == "200") {
          printInfo(info: 'We are good');
          Get.to(() => HomeView());
        }
      } catch (e) {
        printInfo(info: 'Hello an error has here');
      }
    }
  }

  void login(String email, password) {
    if (_isValid()) {
      _status.value = RxStatus.loading();
      try {
        // auth.signInWithEmailAndPassword(email: email, password: password);
      } catch (e) {
        ErrorUtils.showErrorSnackbar(
            title: "Error", message: "Your Email is not correct");
        Get.snackbar("About User", "User message",
            snackPosition: SnackPosition.BOTTOM,
            titleText: const Text(
              "ASD",
              style: TextStyle(color: Colors.amber),
            ),
            messageText: Text(
              e.toString(),
              style: const TextStyle(color: Colors.amber),
            ));
      }
    }
  }
}

// factory fromJson(Map<String, dynamic> json) => Datum(
//       id: json["id"],
// );

// Map<String, dynamic> toJson() => {
//       "id": id,
// };
