import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/airtime_swap_controller.dart';

class AirtimeSwapView extends GetView<AirtimeSwapController> {
  const AirtimeSwapView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AirtimeSwapView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AirtimeSwapView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
