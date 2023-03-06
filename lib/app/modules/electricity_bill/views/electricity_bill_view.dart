import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/electricity_bill_controller.dart';

class ElectricityBillView extends GetView<ElectricityBillController> {
  const ElectricityBillView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElectricityBillView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ElectricityBillView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
