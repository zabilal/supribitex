import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transfer_log_controller.dart';

class TransferLogView extends GetView<TransferLogController> {
  const TransferLogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TransferLogView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TransferLogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
