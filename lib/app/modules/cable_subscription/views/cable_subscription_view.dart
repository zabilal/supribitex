import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cable_subscription_controller.dart';

class CableSubscriptionView extends GetView<CableSubscriptionController> {
  const CableSubscriptionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CableSubscriptionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CableSubscriptionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
