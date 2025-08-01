import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/module/task_data.dart';
import 'package:todoey/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlueAccent,
            // ···
            brightness: Brightness.light,
          ),
        ),
        home: TaskScreen(),
      ),
    );
  }
}
