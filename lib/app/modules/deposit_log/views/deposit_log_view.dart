import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/deposit_log_controller.dart';

class DepositLogView extends GetView<DepositLogController> {
  const DepositLogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DepositLogView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DepositLogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
