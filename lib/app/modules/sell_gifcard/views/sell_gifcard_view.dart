import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sell_gifcard_controller.dart';

class SellGifcardView extends GetView<SellGifcardController> {
  const SellGifcardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SellGifcardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SellGifcardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
