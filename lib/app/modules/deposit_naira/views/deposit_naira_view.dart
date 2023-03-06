import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/deposit_naira_controller.dart';

class DepositNairaView extends GetView<DepositNairaController> {
  const DepositNairaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DepositNairaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DepositNairaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      
    );
  }
}
