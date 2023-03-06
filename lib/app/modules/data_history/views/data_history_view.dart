import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_history_controller.dart';

class DataHistoryView extends GetView<DataHistoryController> {
  const DataHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataHistoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DataHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
