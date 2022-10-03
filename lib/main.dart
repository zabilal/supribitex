import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supribitex/navigationUtils.dart';
import 'package:supribitex/routes.dart';
import 'package:supribitex/screens/splash/components/onboarding_content.dart';
import 'package:supribitex/screens/splash/onboarding_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supribitex/web_container.dart';
// import 'package:shared_preferences/shared_preferences.dart';

final box = GetStorage();

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    bool val = box.read("onboard") ?? false;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: val ? WebContainer() : OnboardingScreen(),
          imageBackground: AssetImage("assets/images/Supribtex2.jpg"),
          image: Image.asset("assets/images/supri.png"),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          onClick: () => print("Flutter Egypt"),
          loaderColor: Colors.blue[900]),
      routes: routes,
    );
  }
}
