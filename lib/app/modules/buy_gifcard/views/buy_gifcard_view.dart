import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/buy_gifcard_controller.dart';

class BuyGifcardView extends GetView<BuyGifcardController> {
  const BuyGifcardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BuyGifcardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BuyGifcardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
