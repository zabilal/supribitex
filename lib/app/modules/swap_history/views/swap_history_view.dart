import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/swap_history_controller.dart';

class SwapHistoryView extends GetView<SwapHistoryController> {
  const SwapHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwapHistoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SwapHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
