import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/activities_log_controller.dart';

class ActivitiesLogView extends GetView<ActivitiesLogController> {
  const ActivitiesLogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ActivitiesLogView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ActivitiesLogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
