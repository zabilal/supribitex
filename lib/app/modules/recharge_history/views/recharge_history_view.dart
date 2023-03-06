import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/recharge_history_controller.dart';

class RechargeHistoryView extends GetView<RechargeHistoryController> {
  const RechargeHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RechargeHistoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RechargeHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
