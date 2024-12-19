import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  final String taskText;
  final Color color;

  const TaskWidget({
    super.key,
    required this.taskText,
    required this.color,
  });

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Transform.scale(
          scale: 1.8,
          child: Checkbox(
            splashRadius: 15,
            activeColor: widget.color,
            side: BorderSide(color: widget.color),
            shape: CircleBorder(),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: widget.color,
          ),
          width: deviceWidth - 96,
          height: 36,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.taskText,
                style: TextStyle(
                  color: const Color.fromARGB(126, 0, 0, 0),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
