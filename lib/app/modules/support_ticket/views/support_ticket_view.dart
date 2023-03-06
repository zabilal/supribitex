import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/support_ticket_controller.dart';

class SupportTicketView extends GetView<SupportTicketController> {
  const SupportTicketView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SupportTicketView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SupportTicketView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
