import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function? checkBoxCallBack;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            fontSize: 20.0,
            fontWeight: FontWeight.w300),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueGrey[800],
        value: isChecked,
        onChanged: (value) {
          if (checkBoxCallBack != null) {
            checkBoxCallBack!(value);
          }
        },
      ),
    );
  }
}
