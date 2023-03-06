import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/referal_system_controller.dart';

class ReferalSystemView extends GetView<ReferalSystemController> {
  const ReferalSystemView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReferalSystemView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReferalSystemView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
