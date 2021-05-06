import 'package:flutter/material.dart';
import 'package:supribitex/components/default_button.dart';
import 'package:supribitex/constants.dart';
import 'package:supribitex/main.dart';
import 'package:supribitex/screens/splash/components/body.dart';

import '../../../size_config.dart';


class OnboardingContent extends StatefulWidget {
  
  const OnboardingContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  _OnboardingContentState createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
  final int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Spacer(),
            Text(
              "SUPRIBITEX",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.text,
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 2),
            // Image.asset(
            //   image,
            //   height: getProportionateScreenHeight(265),
            //   width: getProportionateScreenWidth(235),
            // ),
            Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  // Spacer(),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: List.generate(
                  //     splashData.length,
                  //     (index) => buildDot(index: index),
                  //   ),
                  // ),
                  Spacer(flex: 3),
                  DefaultButton(
                    text: "Continue",
                    press: () {
                      box.write("onboard", true);
                      // SharedPreferences pref =
                      //     await SharedPreferences.getInstance();
                      // pref.setBool("done", true);
                      Navigator.pushNamed(context, '/web');
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          ],
        ),
      // ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
