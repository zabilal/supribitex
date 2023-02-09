import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import './app/onboarding/onboarding_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimeout() {
    return Timer(const Duration(seconds: 5), changeScreen);
  }

  changeScreen() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return  const OnboardingScreen();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.cyan,
          image: DecorationImage(
            image: AssetImage("assets/images/firstbg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FadeInLeft(
                child: const Image(
                image: AssetImage('assets/images/slogo.png'),
                width: 100.0,
                height: 100.0,
              ),),
              const SizedBox(width: 40.0),
              FadeInRight(child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: const Text(
                  "SupriBitex",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 34, color: Colors.white, letterSpacing: 0.5, fontFamily: "ProductSans"),
                ),
              ),),
              const SizedBox(height: 200.0),
              Center(
                child: Container(
                    width: 100,
                    height: 2,
                    child: const LinearProgressIndicator(color: Colors.white, backgroundColor: Colors.cyanAccent,)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
