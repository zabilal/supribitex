import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandableCardController extends GetxController {
  var isExpanded = false.obs;

  void toggleExpanded() {
    isExpanded.value = !isExpanded.value;
  }
}

class ExpandableCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  ExpandableCardWidget({required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    final ExpandableCardController _controller = Get.put(ExpandableCardController());

    return Card(
      child: InkWell(
        onTap: _controller.toggleExpanded,
        child: Column(
          children: [
            ListTile(
              leading: Icon(icon),
              title: Text(title),
              subtitle: Text(subtitle),
            ),
            Obx(() {
              return _controller.isExpanded.value
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('This is the expanded content of the card.'),
                    )
                  : SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }
}
