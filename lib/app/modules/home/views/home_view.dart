import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supribitex/app/modules/home/controllers/my_drawer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff2470c7),
      ),
      home: HomePage(),
    );
  }
}