import 'package:flutter/material.dart';

import 'task.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          spacing: 30,
          children: [
            TaskWidget(taskText: 'Ligar para o advogado', color: Colors.blue),
            TaskWidget(taskText: 'Lavar o carro', color: Colors.cyan),
            TaskWidget(
                taskText: 'Comprar ração do cachorro', color: Colors.orange)
          ],
        ),
      ),
    );
  }
}
