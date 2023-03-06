import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cable_history_controller.dart';

class CableHistoryView extends GetView<CableHistoryController> {
  const CableHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CableHistoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CableHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
