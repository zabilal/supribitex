import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/exchange_log_controller.dart';

class ExchangeLogView extends GetView<ExchangeLogController> {
  const ExchangeLogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExchangeLogView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExchangeLogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
