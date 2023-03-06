import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/convert_bonus_controller.dart';

class ConvertBonusView extends GetView<ConvertBonusController> {
  const ConvertBonusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConvertBonusView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ConvertBonusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
