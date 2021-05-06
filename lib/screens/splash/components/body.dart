import 'package:flutter/material.dart';
import 'package:supribitex/constants.dart';
import 'package:supribitex/main.dart';
import 'package:supribitex/size_config.dart';

// This is the best practice
import 'onboarding_content.dart';
import '../../../components/default_button.dart';

// import 'package:shared_preferences/shared_preferences.dart';

  List<Map<String, String>> splashData = [
  {
    "text": "Buy and Sell Bitcoin, with ease",
    // "image": "assets/images/exchange.png"
    "image": "assets/images/1.jpg"
  },
  {
    "text": "Buy and Sell your Giftcards \nwithout Stress",
    // "image": "assets/images/Gift-Cards-Selection.png"
    "image": "assets/images/2.jpg"
  },
  {
    "text": "Airtime recharge and swapping \nat your fingertips",
    // "image": "assets/images/vtu.jpg"
    "image": "assets/images/3.jpg"
  },
];

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;


  @override
  void initState() {
    super.initState();

    bool val = box.read("onboard") ?? false;
    // print('bljhfvdsjfdsfjhdsu $val');

    if (val) {
      Navigator.pushNamed(context, "/web");
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
      // child: SizedBox(
      //   width: double.infinity,
      //   child: Column(
      //     children: <Widget>[
      //       Expanded(
      //         flex: 2,
      //         child: PageView.builder(
      //           onPageChanged: (value) {
      //             setState(() {
      //               currentPage = value;
      //             });
      //           },
      //           itemCount: splashData.length,
      //           itemBuilder: (context, index) => OnboardingContent(
      //             image: splashData[index]["image"],
      //             text: splashData[index]['text'],
      //           ),
      //         ),
      //       ),],
      //   ),
      // ),
      return PageView.builder(
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        itemCount: splashData.length,
        itemBuilder: (context, index) => OnboardingContent(
          image: splashData[index]["image"],
          text: splashData[index]['text'],
        ),
      // ),
    );






            // -------------------------------------------------------------------------
            // Expanded(
            //   flex: 2,
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(
            //         horizontal: getProportionateScreenWidth(20)),
            //     child: Column(
            //       children: <Widget>[
            //         Spacer(),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: List.generate(
            //             splashData.length,
            //             (index) => buildDot(index: index),
            //           ),
            //         ),
            //         Spacer(flex: 3),
            //         DefaultButton(
            //           text: "Continue",
            //           press: () {
            //             box.write("onboard", true);
            //             // SharedPreferences pref =
            //             //     await SharedPreferences.getInstance();
            //             // pref.setBool("done", true);
            //             Navigator.pushNamed(context, '/web');
            //           },
            //         ),
            //         Spacer(),
            //       ],
            //     ),
            //   ),
            // ),
          
  }

  // AnimatedContainer buildDot({int index}) {
  //   return AnimatedContainer(
  //     duration: kAnimationDuration,
  //     margin: EdgeInsets.only(right: 5),
  //     height: 6,
  //     width: currentPage == index ? 20 : 6,
  //     decoration: BoxDecoration(
  //       color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
  //       borderRadius: BorderRadius.circular(3),
  //     ),
  //   );
  // }
}