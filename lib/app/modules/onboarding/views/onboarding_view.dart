import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../WelcomeScreen.dart';
import '../../../onboarding/onboarding_contents.dart';
import '../controllers/onboarding_controller.dart';
import 'size_config.dart';

class OnboardingView extends GetView<OnboardingController> {
  OnboardingView({Key? key}) : super(key: key);
  final controller = Get.put(OnboardingController());

  final _controller = PageController();

  final List colors = [
    const Color(0xff80bfc2),
    const Color(0xff97cef1),
    const Color(0xffffffff)
  ];

  AnimatedContainer _buildDots({int? index}) {
    printInfo(info: 'index for dots :: $index');
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF000000),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: controller.currentPage.value == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    double blockH = SizeConfig.blockH!;
    double blockV = SizeConfig.blockV!;

    return Scaffold(
      backgroundColor: colors[controller.currentPage.value],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) => controller.setCurrentPage(value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: SizeConfig.blockV! * 35,
                        ),
                        SizedBox(
                          height: (height >= 840) ? 60 : 30,
                        ),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w900,
                              fontSize: (width <= 550) ? 30 : 35,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          contents[i].desc,
                          style: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w300,
                            fontSize: (width <= 550) ? 17 : 25,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (int index) => Obx(() => _buildDots(index: index)),
                    ),
                  ),
                  Obx(() => 
                  controller.currentPage.value == contents.length - 1
                      ? Padding(
                          padding: const EdgeInsets.all(30),
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const WelcomeScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: (width <= 550)
                                  ? const EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 20)
                                  : EdgeInsets.symmetric(
                                      horizontal: width * 0.2, vertical: 25),
                              textStyle:
                                  TextStyle(fontSize: (width <= 550) ? 13 : 17),
                            ),
                            child: const Text("START"),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  _controller.jumpToPage(2);
                                },
                                style: TextButton.styleFrom(
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: (width <= 550) ? 13 : 17,
                                  ),
                                ),
                                child: const Text(
                                  "SKIP",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _controller.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  elevation: 0,
                                  padding: (width <= 550)
                                      ? const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20)
                                      : const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 25),
                                  textStyle: TextStyle(
                                      fontSize: (width <= 550) ? 13 : 17),
                                ),
                                child: const Text("NEXT"),
                              ),
                            ],
                          ),
                        )
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
