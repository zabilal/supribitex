import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transfer_fund_controller.dart';

class TransferFundView extends GetView<TransferFundController> {
  const TransferFundView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TransferFundView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TransferFundView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
