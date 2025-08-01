import 'package:agents/components/button.dart';
import 'package:agents/components/constants.dart';
import 'package:agents/controller/summary.dart';
import 'package:agents/ui/summary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final SummaryController controller = Get.put(SummaryController());
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     centerTitle: true,
      //     title: const Text(
      //       "Summary App",
      //       style: kAppBarTextStyle,
      //     )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => ToggleButtons(
              isSelected: [
                controller.selectedType.value == "movie",
                controller.selectedType.value == "book"
              ],
              onPressed: (index) {
                controller.selectedType.value = index == 0 ? "movie" : "book";
              },
              children: [Text("Movie"), Text("Book")],
            )),
            SizedBox(height: 20),
            const Text('Home'),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.left,
              onChanged: (value) {
                // email = value;
              },
              decoration:
                  KTextFieldDecoration.copyWith(hintText: "Enter ${controller.selectedType.value} title",),
            ),
            const SizedBox(
              height: 30,
            ),
            Button(
              width: double.infinity,
              text: 'Submit',
              onPressed: () {
                controller.fetchSummary(textController.text);
                Get.to(() => SummaryScreen());
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Summary',
              style: kTitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
