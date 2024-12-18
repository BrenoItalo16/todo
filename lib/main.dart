import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/task.dart';

void main() {
  runApp(
    MaterialApp(
      home: AppWidget(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  var align = Alignment.centerLeft;
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 30,
        children: [
          TaskWidget(taskText: 'teste', color: Colors.blue),
          TaskWidget(taskText: 'fazer prova amanha', color: Colors.cyan),
          TaskWidget(taskText: 'fdjhasdjahskjd', color: Colors.orange)
        ],
      ),
    );
  }
}
