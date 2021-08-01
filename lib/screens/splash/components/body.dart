import 'package:flutter/material.dart';
import 'package:supribitex/constants.dart';
import 'package:supribitex/main.dart';
import 'package:supribitex/size_config.dart';

// This is the best practice
import 'onboarding_content.dart';
import '../../../components/default_button.dart';

List<Map<String, String>> splashData = [
  {
    "text": "Buy and Sell Bitcoin, with ease",
    "image": "assets/images/S1.jpg"
  },
  {
    "text": "Buy and Sell your Giftcards \nwithout Stress",
    "image": "assets/images/S2.jpg"
  },
  {
    "text": "Airtime recharge and swapping \nat your fingertips",
    "image": "assets/images/S3.jpg"
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
    print('bljhfvdsjfdsfjhdsu $val');

    if (val) {
      Navigator.pushNamed(context, "/web");
    }
  }

  @override
  Widget build(BuildContext context) {
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
          index: index,
          currentPage: currentPage),
      // ),
    );
  }
}
