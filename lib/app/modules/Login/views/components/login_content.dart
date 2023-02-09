import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:supribitex/app/modules/Login/controllers/login_controller.dart';
import 'package:supribitex/app/utils/constants.dart';
import 'package:supribitex/app/utils/helper_functions.dart';
import '../animations/change_screen_animation.dart';
import 'bottom_text.dart';
import 'top_text.dart';

enum Screens {
  createAccount,
  welcomeBack,
}

class LoginContent extends StatefulWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent>
    with TickerProviderStateMixin {
  late final List<Widget> createAccountContent;
  late final List<Widget> loginContent;

  final loginController = Get.put(LoginController());

  Widget inputField(
      String hint, IconData iconData, TextEditingController textController) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          // borderRadius: BorderRadius.circular(0),
          child: TextField(
            controller: textController,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              //   borderSide: BorderSide.none,
              // ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        onPressed: () {
          //Do auth here
          printInfo(info: 'Register triggered');
          loginController.register();
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: const StadiumBorder(),
          primary: kSecondaryColor,
          elevation: 8,
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: kPrimaryColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'or',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 1,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget logos() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/facebook.png'),
          const SizedBox(width: 24),
          Image.asset('assets/images/google.png'),
        ],
      ),
    );
  }

  Widget forgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: kSecondaryColor,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    createAccountContent = [
      inputField('Referal username', Ionicons.person_outline,
          loginController.refnameController),
      inputField('Username', Ionicons.person_outline,
          loginController.usernameController),
      inputField(
          'Email', Ionicons.mail_outline, loginController.emailController),
      inputField('Phone Number', Ionicons.phone_landscape_outline,
          loginController.phoneController),
      inputField('Password', Ionicons.lock_closed_outline,
          loginController.passwordController),
      inputField('Confirm Password', Ionicons.lock_closed_outline,
          loginController.cpasswordController),
      loginButton('Sign Up'),
      // orDivider(),
      // logos(),
    ];

    loginContent = [
      inputField('Email / Username', Ionicons.mail_outline,
          loginController.emailController),
      inputField('Password', Ionicons.lock_closed_outline,
          loginController.passwordController),
      loginButton('Sign In'),
      forgotPassword(),
    ];

    ChangeScreenAnimation.initialize(
      vsync: this,
      createAccountItems: createAccountContent.length,
      loginItems: loginContent.length,
    );

    for (var i = 0; i < createAccountContent.length; i++) {
      createAccountContent[i] = HelperFunctions.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.createAccountAnimations[i],
        child: createAccountContent[i],
      );
    }

    for (var i = 0; i < loginContent.length; i++) {
      loginContent[i] = HelperFunctions.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.loginAnimations[i],
        child: loginContent[i],
      );
    }

    super.initState();
  }

  @override
  void dispose() {
    ChangeScreenAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              // child:  Positioned(
              //   top: 300,
              //   left: 24,
              //   child: TopText(),
              // ),
              child: TopText(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: createAccountContent,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: loginContent,
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: BottomText(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
