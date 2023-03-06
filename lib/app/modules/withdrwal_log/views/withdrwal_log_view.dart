import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/withdrwal_log_controller.dart';

class WithdrwalLogView extends GetView<WithdrwalLogController> {
  const WithdrwalLogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WithdrwalLogView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WithdrwalLogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
