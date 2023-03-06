import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_request_controller.dart';

class NewRequestView extends GetView<NewRequestController> {
  const NewRequestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewRequestView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NewRequestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
