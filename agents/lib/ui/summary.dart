import 'package:agents/controller/summary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SummaryScreen extends StatelessWidget {
  final SummaryController controller = Get.find();

  SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Summary")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Obx(() {
          if (controller.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child:
                Text(controller.summary.value, style: TextStyle(fontSize: 16)),
          );
        }),
      ),
    );
  }
}
