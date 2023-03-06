import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/electricity_history_controller.dart';

class ElectricityHistoryView extends GetView<ElectricityHistoryController> {
  const ElectricityHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElectricityHistoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ElectricityHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
