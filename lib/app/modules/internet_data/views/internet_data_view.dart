import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/internet_data_controller.dart';

class InternetDataView extends GetView<InternetDataController> {
  const InternetDataView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InternetDataView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InternetDataView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
