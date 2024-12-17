import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          setState(() {
            align = Alignment.centerRight;
          });
        },
        child: Align(
          alignment: align,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
