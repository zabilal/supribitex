import 'package:flutter/material.dart';
import 'package:supribitex/screens/splash/components/body.dart';
import 'package:supribitex/size_config.dart';

class SplashScreens extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
